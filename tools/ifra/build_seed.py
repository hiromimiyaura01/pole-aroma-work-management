"""IFRA の公式 Excel(一覧表・Annex)から、Supabase に入れる SQL を作る。

使い方(リポジトリのルートで):
    python3 -I tools/ifra/build_seed.py <一覧表.xlsx> <Annex.xlsx> <出力フォルダ>

- Excel の元の値は raw_value に必ず残し、整えた値を別の列に入れる。
- 整え方のルールは normalize_limit() / normalize_annex_value() に書いてある。
- 決まったルールで直せない値は needs_review = true にし、
  カテゴリ 11B の分と Annex の不具合は ifra_review_items(例外表)に入れる。
"""

import hashlib
import re
import sys
from pathlib import Path

import openpyxl

AMENDMENT = 51
LABEL = "IFRA 51st Amendment"
OVERVIEW_URL = "https://d3t14p1xronwr0.cloudfront.net/docs/Standards-Documentation/ifra-51st-amendment-ifra-standards-overview.xlsx"
ANNEX_URL = "https://d3t14p1xronwr0.cloudfront.net/docs/Standards-Documentation/ifra-51st-amendment-annex-on-contributions-from-other-sources.xlsx"
REVIEW_CATEGORY = "11B"  # MVP で使うカテゴリ(ピローミスト)

CAS_RE = re.compile(r"\d{2,7}-\d{2}-\d")
NUM_RE = re.compile(r"\d+(?:[.,]\d+)?")


def sha256(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def q(v):
    """SQL の文字列リテラル(null 対応)。"""
    if v is None:
        return "null"
    if isinstance(v, bool):
        return "true" if v else "false"
    if isinstance(v, (int, float)):
        return repr(v)
    return "'" + str(v).replace("'", "''") + "'"


def num(v):
    if v is None:
        return "null"
    s = f"{v:.10f}".rstrip("0").rstrip(".")
    return s if s else "0"


def text_or_none(v):
    if v is None:
        return None
    s = str(v).strip()
    return s or None


def normalize_limit(raw, standard_type):
    """上限の値を (limit_kind, limit_pct, needs_review) に整える。"""
    if raw is None or (isinstance(raw, str) and raw.strip() == ""):
        # 空欄:禁止を含む基準なら「禁止」、規格だけの基準なら「上限の数値なし」
        if "PROHIBITION" in standard_type:
            return "prohibited", 0.0, False
        if standard_type == "SPECIFICATION":
            return "not_applicable", None, False
        return "not_applicable", None, True  # 想定外。人が見る
    if isinstance(raw, (int, float)):
        return "limit", float(raw), False
    s = raw.strip()
    low = s.lower()
    if low == "no restriction":
        return "no_restriction", None, False
    if low == "see notebox":
        return "see_notebox", None, True
    if NUM_RE.fullmatch(s):
        # "0.10"(文字として保存)や "0,10"(小数点がカンマ)
        return "limit", float(s.replace(",", ".")), False
    m = re.fullmatch(r"(\d+(?:[.,]\d+)?)\s*\((.+)\)", s)
    if m:
        value = float(m.group(1).replace(",", "."))
        if m.group(2).strip().lower() == "prohibited":
            return "prohibited", value, False
        return "annotated", value, True  # 例:0.0015 (5-MOP)
    return "see_notebox", None, True  # 想定外の書き方。人が見る


def normalize_annex_value(raw):
    """Annex の含有率を (concentration_pct, needs_review) に整える。"""
    if isinstance(raw, (int, float)):
        return float(raw), False
    if raw is None:
        return None, True
    s = str(raw).strip()
    if NUM_RE.fullmatch(s):
        return float(s.replace(",", ".")), False
    return None, True  # 例:"0..3"(書き間違いと思われる)。人が見る


def read_overview(path):
    rows = list(openpyxl.load_workbook(path, read_only=True, data_only=True).active.iter_rows(values_only=True))
    header = list(rows[2])
    assert header[0] == "Key", header[:3]
    col = {h: i for i, h in enumerate(header)}
    cats = [h for h in header if h and h.startswith("Category ")]
    assert len(cats) == 18, cats
    out = []
    for r in rows[3:]:
        if not r[0]:
            continue
        notes = []
        for h in [
            "Prohibited fragrance ingredients: notes",
            "Restricted ingredients due to phototoxicity considerations: notes",
            "Restricted ingredients: notes",
            "Specified ingredients: notes",
            "Contributions from other sources: notes",
        ]:
            t = text_or_none(r[col[h]])
            if t:
                notes.append(f"[{h}] {t}")
        out.append({
            "key": r[col["Key"]].strip(),
            "name": text_or_none(r[col["Name of the IFRA Standard"]]),
            "type": text_or_none(r[col["IFRA Standard type"]]),
            "property": text_or_none(r[col["Intrinsic property driving the risk management measure"]]),
            "last_amended": r[col["Amendment number"]],
            "cas": sorted(set(CAS_RE.findall(str(r[col["CAS numbers"]] or "")))),
            "synonyms": text_or_none(r[col["Synonyms"]]),
            "notes": "\n".join(notes) or None,
            "limits": {
                h.replace("Category ", "").replace(" (%)", ""): r[col[h]] for h in cats
            },
        })
    return out


def read_annex(path):
    ws = openpyxl.load_workbook(path, read_only=True, data_only=True)["Natural contributions"]
    rows = list(ws.iter_rows(values_only=True))
    assert rows[6][5] == "NCS NAME", rows[6]
    out = []
    for i, r in enumerate(rows[7:], start=8):  # Excel の行番号
        if not r[5]:
            continue
        out.append({
            "row": i,
            "ncs_name": text_or_none(r[5]),
            "botanical": text_or_none(r[6]),
            "iso": text_or_none(r[1]),
            "rifm": text_or_none(r[2]),
            "ncs_cas": text_or_none(r[3]),
            "ncs_other_cas": text_or_none(r[4]),
            "c_cas": text_or_none(r[7]),
            "c_name": text_or_none(r[8]),
            "raw": r[9],
        })
    return out


def chunks(lst, n):
    for i in range(0, len(lst), n):
        yield lst[i:i + n]


def insert(table, cols, rows):
    out = []
    for part in chunks(rows, 500):
        out.append(f"insert into public.{table} ({', '.join(cols)}) values\n  "
                   + ",\n  ".join("(" + ", ".join(v) + ")" for v in part) + ";\n")
    return "".join(out)


def main(overview_path, annex_path, out_dir):
    out_dir = Path(out_dir)
    standards = read_overview(overview_path)
    annex = read_annex(annex_path)

    std_rows, cas_rows, limit_rows, review_rows = [], [], [], []
    cas_to_std = {}
    stats = {}
    for s in standards:
        std_rows.append([str(AMENDMENT), q(s["key"]), q(s["name"]), q(s["type"]), q(s["property"]),
                         q(s["last_amended"]),
                         "array[" + ", ".join(q(c) for c in s["cas"]) + "]::text[]",
                         q(s["synonyms"]), q(s["notes"])])
        for c in s["cas"]:
            cas_rows.append([str(AMENDMENT), q(s["key"]), q(c)])
            cas_to_std.setdefault(c, set()).add(s["key"])
        for cat, raw in s["limits"].items():
            kind, pct, review = normalize_limit(raw, s["type"])
            stats[kind] = stats.get(kind, 0) + 1
            raw_text = None if raw is None else (num(raw) if isinstance(raw, (int, float)) else str(raw).strip())
            limit_rows.append([str(AMENDMENT), q(s["key"]), q(cat), q(raw_text), q(kind),
                               num(pct) if pct is not None else "null", q(review)])
            if review and cat == REVIEW_CATEGORY:
                review_rows.append([str(AMENDMENT), q("limit"), q(s["key"]), q(cat),
                                    q(f"{s['key']} {s['name']}(カテゴリ {cat})"), q(raw_text)])

    annex_rows = []
    annex_review = 0
    for a in annex:
        pct, review = normalize_annex_value(a["raw"])
        raw_text = num(a["raw"]) if isinstance(a["raw"], (int, float)) else text_or_none(a["raw"])
        annex_rows.append([str(AMENDMENT), str(a["row"]), q(a["ncs_name"]), q(a["botanical"]), q(a["iso"]),
                           q(a["rifm"]), q(a["ncs_cas"]), q(a["ncs_other_cas"]), q(a["c_cas"]), q(a["c_name"]),
                           q(raw_text), num(pct) if pct is not None else "null", q(review)])
        if review:
            annex_review += 1
            review_rows.append([str(AMENDMENT), q("annex_value"), "null", "null",
                                q(f"Annex {a['row']}行目:{a['ncs_name']} × {a['c_name']}"), q(raw_text)])
    unmapped = {}
    for a in annex:
        if a["c_cas"] not in cas_to_std:
            unmapped.setdefault((a["c_cas"], a["c_name"]), []).append(a["row"])
    for (c_cas, c_name), rows_ in unmapped.items():
        review_rows.append([str(AMENDMENT), q("annex_mapping"), "null", "null",
                            q(f"Annex の成分 {c_name}(CAS {c_cas})がどの基準の CAS にも一致しない(Annex {', '.join(map(str, rows_))}行目)"),
                            "null"])

    header = (f"-- {LABEL} の基準データ\n"
              f"-- tools/ifra/build_seed.py で自動生成。手で直さないこと。\n"
              f"-- 出典:{OVERVIEW_URL}\n--       {ANNEX_URL}\n\n")

    part1 = header + "begin;\n\n" + insert(
        "ifra_amendments",
        ["amendment", "label", "overview_url", "annex_url", "overview_sha256", "annex_sha256"],
        [[str(AMENDMENT), q(LABEL), q(OVERVIEW_URL), q(ANNEX_URL), q(sha256(overview_path)), q(sha256(annex_path))]],
    ) + "\n" + insert(
        "ifra_standards",
        ["amendment", "standard_key", "name", "standard_type", "intrinsic_property", "last_amended_in",
         "cas_numbers", "synonyms", "notes"], std_rows,
    ) + "\n" + insert(
        "ifra_standard_cas", ["amendment", "standard_key", "cas"], cas_rows,
    ) + "\n" + insert(
        "ifra_limits",
        ["amendment", "standard_key", "category", "raw_value", "limit_kind", "limit_pct", "needs_review"],
        limit_rows,
    ) + "\ncommit;\n"

    part2 = header + "begin;\n\n" + insert(
        "ifra_annex",
        ["amendment", "source_row", "ncs_name", "botanical_name", "iso_category", "rifm_id", "ncs_cas",
         "ncs_other_cas", "constituent_cas", "constituent_name", "raw_value", "concentration_pct", "needs_review"],
        annex_rows,
    ) + "\n" + insert(
        "ifra_review_items",
        ["amendment", "item_type", "standard_key", "category", "ref", "raw_value"], review_rows,
    ) + "\ncommit;\n"

    (out_dir / f"ifra_{AMENDMENT}_1_standards.sql").write_text(part1, encoding="utf-8")
    (out_dir / f"ifra_{AMENDMENT}_2_annex.sql").write_text(part2, encoding="utf-8")

    print(f"基準:{len(std_rows)}件 / CAS:{len(cas_rows)}件 / 上限:{len(limit_rows)}件")
    print("上限の種類:", dict(sorted(stats.items())))
    print(f"Annex:{len(annex_rows)}行(値の確認が必要 {annex_review}行、基準に結びつかない成分 {len(unmapped)}種類)")
    print(f"例外表(ifra_review_items):{len(review_rows)}件")


if __name__ == "__main__":
    if len(sys.argv) != 4:
        sys.exit(__doc__)
    main(*sys.argv[1:])

"""IFRA の Excel とデータベースの中身を「全件」突き合わせる SQL を作る。

使い方(リポジトリのルートで):
    python3 -I tools/ifra/build_verify.py <一覧表.xlsx> <Annex.xlsx> supabase/checks/ifra_51_verify_all.sql

取り込み(build_seed.py)とは別の方法で Excel を読む:
- build_seed.py は openpyxl(Excel を読む部品)を使う。
- このプログラムは部品を使わず、xlsx の中身(ZIP の中の XML)を直接読む。
  → 片方の読み方にクセや間違いがあっても、もう片方で気づける。

作った SQL を Supabase の SQL Editor で実行すると、
食い違いのある行だけが表示される(0行なら全件一致)。
"""

import re
import sys
import zipfile
import xml.etree.ElementTree as ET

NS = {"m": "http://schemas.openxmlformats.org/spreadsheetml/2006/main"}
R_NS = "{http://schemas.openxmlformats.org/officeDocument/2006/relationships}id"


def col_index(ref):
    letters = re.match(r"[A-Z]+", ref).group(0)
    n = 0
    for ch in letters:
        n = n * 26 + (ord(ch) - 64)
    return n - 1


def read_sheet(path, sheet_name=None):
    """{行番号: {列番号: 値(文字列)}} を返す。"""
    z = zipfile.ZipFile(path)
    shared = []
    if "xl/sharedStrings.xml" in z.namelist():
        for si in ET.fromstring(z.read("xl/sharedStrings.xml")).findall("m:si", NS):
            shared.append("".join(t.text or "" for t in si.iter("{%s}t" % NS["m"])))
    wb = ET.fromstring(z.read("xl/workbook.xml"))
    rels = ET.fromstring(z.read("xl/_rels/workbook.xml.rels"))
    targets = {r.get("Id"): r.get("Target") for r in rels}
    sheets = wb.find("m:sheets", NS)
    sheet = sheets[0] if sheet_name is None else next(s for s in sheets if s.get("name") == sheet_name)
    target = targets[sheet.get(R_NS)].lstrip("/")
    if not target.startswith("xl/"):
        target = "xl/" + target
    root = ET.fromstring(z.read(target))
    rows = {}
    for row in root.iter("{%s}row" % NS["m"]):
        r = int(row.get("r"))
        cells = {}
        for c in row.findall("m:c", NS):
            t = c.get("t")
            v = c.find("m:v", NS)
            if t == "s" and v is not None:
                val = shared[int(v.text)]
            elif t == "inlineStr":
                val = "".join(x.text or "" for x in c.iter("{%s}t" % NS["m"]))
            elif v is not None:
                val = v.text
            else:
                val = None
            cells[col_index(c.get("r"))] = val
        rows[r] = cells
    return rows


def q(v):
    return "null" if v is None else "'" + str(v).replace("'", "''") + "'"


def as_number(s):
    """数値として読めるなら float、読めなければ None(カンマの小数も数値として扱う)。"""
    if s is None:
        return None
    t = s.strip().replace(",", ".")
    try:
        return float(t)
    except ValueError:
        return None


def main(overview, annex, out):
    # --- 一覧表 ---
    rows = read_sheet(overview)
    header_row = next(r for r, cells in rows.items() if cells.get(0) == "Key")
    header = rows[header_row]
    cat_cols = {i: h.replace("Category ", "").replace(" (%)", "")
                for i, h in header.items() if h and h.startswith("Category ")}
    assert len(cat_cols) == 18
    limits = []
    for r in sorted(rows):
        if r <= header_row:
            continue
        key = (rows[r].get(0) or "").strip()
        if not key.startswith("IFRA_STD_"):
            continue
        for i, cat in cat_cols.items():
            raw = rows[r].get(i)
            raw = raw.strip() if raw and raw.strip() else None
            limits.append((key, cat, raw, as_number(raw)))

    # --- Annex ---
    arows = read_sheet(annex, "Natural contributions")
    ah = next(r for r, cells in arows.items() if cells.get(5) == "NCS NAME")
    annex_rows = []
    for r in sorted(arows):
        if r <= ah or not (arows[r].get(5) or "").strip():
            continue
        raw = arows[r].get(9)
        annex_rows.append((r, arows[r].get(5).strip(), (arows[r].get(7) or "").strip(), raw, as_number(raw)))

    # Excel 側の値と、DB 側の値を突き合わせる SQL
    lim_values = ",\n    ".join(
        f"({q(k)}, {q(c)}, {q(raw)}, {'null' if n is None else repr(n)})" for k, c, raw, n in limits)
    ann_values = ",\n    ".join(
        f"({r}, {q(name)}, {q(cas)}, {q(raw)}, {'null' if n is None else repr(n)})" for r, name, cas, raw, n in annex_rows)

    sql = f"""-- =====================================================================
-- IFRA 第51次改正:Excel とデータベースの「全件」突き合わせ
-- tools/ifra/build_verify.py で自動生成(取り込みとは別の方法で Excel を読んだ値)
-- 全体を貼って1回 Run。食い違いのある行だけが表示される。
--   → 「件数」の行だけが出て、食い違いが0件なら全件一致。
-- 確かめること:
--   上限:Excel の数値と limit_pct が一致(数値以外は元の値 raw_value が一致)
--   Annex:Excel の行番号・精油名・成分 CAS・含有率が一致
--   どちらも、Excel にあって DB にない行/DB にあって Excel にない行がないこと
-- =====================================================================
with excel_limits(standard_key, category, raw, num) as (values
    {lim_values}
),
excel_annex(source_row, ncs_name, constituent_cas, raw, num) as (values
    {ann_values}
),
db_limits as (select * from ifra_limits where amendment = 51),
db_annex  as (select * from ifra_annex  where amendment = 51),
limit_diff as (
  select coalesce(e.standard_key, d.standard_key) as 項目, coalesce(e.category, d.category) as カテゴリ,
         e.raw as excel_値, coalesce(d.limit_pct::text, d.limit_kind) as db_値,
         case when d.standard_key is null then 'DB にない'
              when e.standard_key is null then 'Excel にない'
              else '値が違う' end as 食い違い
  from excel_limits e
  full join db_limits d on d.standard_key = e.standard_key and d.category = e.category
  where d.standard_key is null or e.standard_key is null
     or (e.num is not null and (d.limit_pct is null or abs(d.limit_pct - e.num::numeric) > 1e-12))
     or (e.num is null and e.raw is distinct from d.raw_value
         and not (e.raw is not null and d.raw_value is not null and trim(e.raw) = trim(d.raw_value)))
     or (e.num is null and e.raw is null and d.limit_kind not in ('prohibited', 'not_applicable'))
),
annex_diff as (
  select 'Annex ' || coalesce(e.source_row, d.source_row) || '行目' as 項目, null::text as カテゴリ,
         e.ncs_name || ' / ' || e.constituent_cas || ' / ' || coalesce(e.raw, '') as excel_値,
         d.ncs_name || ' / ' || d.constituent_cas || ' / ' || coalesce(d.concentration_pct::text, d.raw_value, '') as db_値,
         case when d.source_row is null then 'DB にない'
              when e.source_row is null then 'Excel にない'
              else '値が違う' end as 食い違い
  from excel_annex e
  full join db_annex d on d.source_row = e.source_row
  where d.source_row is null or e.source_row is null
     or e.ncs_name <> d.ncs_name or e.constituent_cas <> d.constituent_cas
     or (e.num is not null and (d.concentration_pct is null or abs(d.concentration_pct - e.num::numeric) > 1e-12))
     or (e.num is null and e.raw is distinct from d.raw_value)
)
select '件数' as 項目, null as カテゴリ,
       'Excel:上限 ' || (select count(*) from excel_limits) || '件・Annex ' || (select count(*) from excel_annex) || '行' as excel_値,
       'DB:上限 ' || (select count(*) from db_limits) || '件・Annex ' || (select count(*) from db_annex) || '行' as db_値,
       '食い違い ' || ((select count(*) from limit_diff) + (select count(*) from annex_diff)) || '件' as 食い違い
union all select * from limit_diff
union all select * from annex_diff;
"""
    open(out, "w", encoding="utf-8").write(sql)
    print(f"Excel 側:上限 {len(limits)}件・Annex {len(annex_rows)}行 → {out}")


if __name__ == "__main__":
    if len(sys.argv) != 4:
        sys.exit(__doc__)
    main(*sys.argv[1:])

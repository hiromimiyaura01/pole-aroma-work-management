// 写真の読み取り(R1〜R4)の共通の定義と、読み取り結果の確かめ方
// AI の読み取り結果(draft)は、そのまま保存する。ここでは「確認画面にどう出すか」だけを決める。
// 小計・合計のチェックは、AI ではなく計算で行う(08:AI に計算させない)。

import type { LineInput } from "./formulas";

// ---- AI が返す形(Claude API の structured outputs で、この形に固定する) ----

export type DraftLine = {
  name: string; // ノートに書かれたとおりの名前(略称・誤字もそのまま)
  amount: string | null; // ノートに書かれたとおりの数字。読めないときは null
  group_no: number | null; // かっこのグループの番号(上から 1, 2, 3…)。グループの外なら null
  group_label: string | null; // そのグループのかっこの横に書かれた名前(例:top・middle・base)。書かれたとおり。なければ null
  outside_group: boolean; // かっこの外に書かれている(処方に入るか分からない)
  unclear: boolean; // 読み取りに自信がない(名前か数字)
  rewritten: boolean; // 線で消して書き直した跡がある
  note: string | null; // 気づいたこと(例:「2 か 3 か判別しにくい」)
};

export type DraftFormula = {
  label: string | null; // 処方の名前・番号(例:Tea 012)
  formula_id: string | null; // ノートに書かれた不変 ID(P+5桁)。なければ null
  lines: DraftLine[];
  subtotals: { group_no: number; group_label: string | null; value: string }[]; // ノートに書かれた小計
  total: string | null; // ノートに書かれた合計
  notes: string | null; // この処方について気づいたこと
};

export type Draft = {
  formulas: DraftFormula[]; // 見開きなどで、1枚に2つ以上の処方があることがある
  page_notes: string | null; // ページ全体で気づいたこと(処方が見つからない など)
};

// Claude API に渡す JSON Schema(上の型と同じ形)
const nullable = (schema: Record<string, unknown>) => ({ anyOf: [schema, { type: "null" }] });

export const DRAFT_SCHEMA: Record<string, unknown> = {
  type: "object",
  additionalProperties: false,
  required: ["formulas", "page_notes"],
  properties: {
    formulas: {
      type: "array",
      items: {
        type: "object",
        additionalProperties: false,
        required: ["label", "formula_id", "lines", "subtotals", "total", "notes"],
        properties: {
          label: nullable({ type: "string" }),
          formula_id: nullable({ type: "string" }),
          lines: {
            type: "array",
            items: {
              type: "object",
              additionalProperties: false,
              required: ["name", "amount", "group_no", "group_label", "outside_group", "unclear", "rewritten", "note"],
              properties: {
                name: { type: "string" },
                amount: nullable({ type: "string" }),
                group_no: nullable({ type: "integer" }),
                group_label: nullable({ type: "string" }),
                outside_group: { type: "boolean" },
                unclear: { type: "boolean" },
                rewritten: { type: "boolean" },
                note: nullable({ type: "string" }),
              },
            },
          },
          subtotals: {
            type: "array",
            items: {
              type: "object",
              additionalProperties: false,
              required: ["group_no", "group_label", "value"],
              properties: {
                group_no: { type: "integer" },
                group_label: nullable({ type: "string" }),
                value: { type: "string" },
              },
            },
          },
          total: nullable({ type: "string" }),
          notes: nullable({ type: "string" }),
        },
      },
    },
    page_notes: nullable({ type: "string" }),
  },
};

// ---- 確認画面に出すための整え方 ----

export type ReadingStatus = "reading" | "read" | "failed" | "saved" | "discarded";

export const READING_STATUS_LABELS: Record<ReadingStatus, string> = {
  reading: "読み取り中",
  read: "確認待ち",
  failed: "読み取れなかった",
  saved: "保存済み",
  discarded: "使わない",
};

// 「2」「1.5」「1,5」「２」などを数字にする。数字として読めなければ null(推測で埋めない)
export function parseAmount(s: string | null | undefined): number | null {
  if (s === null || s === undefined) return null;
  const t = s.normalize("NFKC").trim().replace(/,/g, ".");
  if (!/^\d+(\.\d+)?$/.test(t)) return null;
  const n = Number(t);
  return n > 0 ? n : null;
}

// 名前の見比べ用:全角半角・大文字小文字・空白・点の違いをならす
export function normalizeName(s: string): string {
  // かっこの記号({ } ( ) [ ] 「 」など)も外す。かっこが名前の一部として読まれても結びつくように
  return s.normalize("NFKC").toLowerCase().replace(/[\s.・、。,_\-{}()\[\]「」『』【】〔〕<>|]/g, "");
}

// かっこの横に書かれた名前を、トップ/ミドル/ベースに読みかえる(読めなければ null)
export function labelToGroup(label: string | null | undefined): "top" | "middle" | "base" | null {
  if (!label) return null;
  const t = label.normalize("NFKC").toLowerCase().replace(/[\s.:]/g, "");
  if (/^(top|t|トップ|とっぷ)(note)?$/.test(t)) return "top";
  if (/^(middle|mid|m|ミドル|みどる|heart|ハート)(note)?$/.test(t)) return "middle";
  if (/^(base|b|ベース|べーす|bottom|ラスト|last)(note)?$/.test(t)) return "base";
  return null;
}

// かっこの番号 → トップ/ミドル/ベース
// 1. かっこの横に名前(top・middle・base など)が書かれていれば、それを使う
// 2. どのグループにも名前がないときだけ、上からの順で仮に入れる(3つ以下のとき)
//    【推測】順で入れるのは当て推量。名前がないときは、確認画面で必ず見てもらう
function groupMap(draft: DraftFormula): { map: Record<number, string>; byOrder: boolean } {
  const nos = [...new Set(draft.lines.map((l) => l.group_no).filter((n): n is number => n !== null))].sort((a, b) => a - b);
  const labelOf = (n: number) =>
    labelToGroup(draft.lines.find((l) => l.group_no === n && labelToGroup(l.group_label))?.group_label) ??
    labelToGroup(draft.subtotals.find((x) => x.group_no === n)?.group_label);
  const labeled = Object.fromEntries(nos.map((n) => [n, labelOf(n)]).filter(([, g]) => g)) as Record<number, string>;
  if (Object.keys(labeled).length > 0) return { map: labeled, byOrder: false };
  if (nos.length === 0 || nos.length > 3) return { map: {}, byOrder: false };
  const names = nos.length === 1 ? ["middle"] : nos.length === 2 ? ["top", "base"] : ["top", "middle", "base"];
  return { map: Object.fromEntries(nos.map((n, i) => [n, names[i]])), byOrder: true };
}

export type LineHint = {
  written: string; // ノートでの書き方
  flags: string[]; // 確認してほしいこと(画面に出す)
};

// AI の下書きを、処方の入力欄の初期値に変える
// 精油は、登録済みの精油の名前と「ならした形」がぴったり同じときだけ選んでおく。それ以外は空(=不明)
export function draftToFormInput(
  draft: DraftFormula,
  oils: { id: string; name: string }[],
): { lines: LineInput[]; hints: LineHint[] } {
  const byName = new Map<string, string[]>();
  for (const o of oils) {
    const k = normalizeName(o.name);
    byName.set(k, [...(byName.get(k) ?? []), o.id]);
  }
  const { map: gmap, byOrder } = groupMap(draft);

  const lines: LineInput[] = [];
  const hints: LineHint[] = [];
  for (const l of draft.lines) {
    const matched = byName.get(normalizeName(l.name)) ?? [];
    const amount = parseAmount(l.amount);
    const flags: string[] = [];
    if (matched.length !== 1) flags.push("精油が不明:一覧から選んでください");
    if (amount === null) flags.push(l.amount ? `数字を読み取れない(「${l.amount}」)` : "数字が読めない");
    if (l.unclear) flags.push("AI の読み取りに自信がない");
    if (l.rewritten) flags.push("書き直しの跡あり:最終の値か確かめてください");
    if (l.outside_group) flags.push("かっこの外の記載:処方に入れるか決めてください");
    if (l.group_no !== null && !gmap[l.group_no]) {
      flags.push(`グループが分からない${l.group_label ? `(ノートの書き方「${l.group_label}」)` : ""}:選んでください`);
    } else if (l.group_no !== null && byOrder) {
      flags.push("グループはかっこの順で仮に入れた:合っているか見てください");
    }
    if (l.note) flags.push(`AI のメモ:${l.note}`);

    lines.push({
      oil_id: matched.length === 1 ? matched[0] : "",
      amount: amount === null ? "" : String(amount),
      dilution_pct: "10",
      note_group: l.group_no !== null ? (gmap[l.group_no] ?? "") : "",
    });
    hints.push({ written: l.name, flags });
  }
  return { lines, hints };
}

export type SubtotalCheck = {
  label: string; // 例:「グループ1(トップ)」「合計」
  written: string; // ノートの値
  computed: number; // 配合行を足した値
  ok: boolean | null; // null=ノートの値が数字として読めない
};

// ノートの小計・合計と、読み取った配合行の合計を見比べる(AI の答えではなく計算で)
export function checkSubtotals(draft: DraftFormula): SubtotalCheck[] {
  const { map: gmap } = groupMap(draft);
  const sumOf = (rows: DraftLine[]) => rows.reduce((t, l) => t + (parseAmount(l.amount) ?? 0), 0);
  const round = (n: number) => Number(n.toFixed(4));
  const checks: SubtotalCheck[] = draft.subtotals.map((s) => {
    const computed = round(sumOf(draft.lines.filter((l) => l.group_no === s.group_no)));
    const written = parseAmount(s.value);
    const g = gmap[s.group_no];
    const gName = g === "top" ? "トップ" : g === "middle" ? "ミドル" : g === "base" ? "ベース" : null;
    return {
      label: `グループ${s.group_no}${gName ? `(${gName}?)` : ""}の小計`,
      written: s.value,
      computed,
      ok: written === null ? null : Math.abs(written - computed) < 1e-9,
    };
  });
  if (draft.total !== null) {
    const written = parseAmount(draft.total);
    const computed = round(sumOf(draft.lines.filter((l) => !l.outside_group)));
    checks.push({ label: "合計(かっこの外を除く)", written: draft.total, computed, ok: written === null ? null : Math.abs(written - computed) < 1e-9 });
  }
  return checks;
}

// 保存したときの配合行(人が直したあと)。written=ノートでの書き方(手で足した行は null)
// AI の下書きと見比べて「人が直した行の数」を数える材料にする(R17・Evals)
export type FinalLine = { oil_id: string; amount: number; dilution_pct: number; note_group: string; written: string | null };

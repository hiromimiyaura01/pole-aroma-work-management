// Evals(R16)の採点。AI には採点させず、決まった方法で数える(08)
//
// 正解:確認画面で直して保存した配合行(formula_readings.final_lines)
// 読み取り:同じ写真を、比べるモデルでもう一度読ませた結果(Draft)
//
// 行の結びつけ方(正解の行 ↔ 読み取りの行)
//   1. ノートでの書き方が同じ(正解の行には、保存したときの AI の書き方 written が残っている)
//   2. 1 で結びつかなければ、精油が同じ(読み取りの名前を、辞書と精油の名前で精油に読みかえる)
//   どちらでも結びつかない正解の行=読み取れなかった行(抜け)/読み取りの行=余分
// 数えること:数字が合っているか/グループが合っているか(正解にグループがある行だけ)

import { draftToFormInput, normalizeName, type Draft, type FinalLine, type OilAlias } from "./readings";

export type LineCheck = {
  written: string | null; // 正解の行の、ノートでの書き方
  oil_id: string;
  expected_amount: number;
  read_amount: number | null; // 読み取った数字(読めなければ null)
  expected_group: string;
  read_group: string;
  read_name: string | null; // 結びついた読み取りの行の名前
  status: "ok" | "amount" | "group" | "missing"; // ok=合っていた/amount=数字が違う/group=数字は合うがグループが違う/missing=抜け
};

export type Score = {
  picked_index: number; // 写真の中のどの処方で採点したか
  n_expected: number;
  n_matched: number;
  n_amount_ok: number;
  n_group_total: number;
  n_group_ok: number;
  n_missing: number;
  n_extra: number;
  details: { lines: LineCheck[]; extras: string[] };
};

const sameNumber = (a: number | null, b: number) => a !== null && Math.abs(a - b) < 1e-9;

function scoreOne(expected: FinalLine[], draft: Draft, index: number, oils: { id: string; name: string }[], aliases: OilAlias[]): Score {
  const formula = draft.formulas[index];
  const { lines: read } = draftToFormInput(formula, oils, aliases);
  const readNames = formula.lines.map((l) => l.name);
  const used = new Set<number>();
  const pairs: (number | null)[] = expected.map(() => null);

  // 1. 書き方が同じ
  expected.forEach((e, i) => {
    if (!e.written) return;
    const key = normalizeName(e.written);
    const j = readNames.findIndex((n, k) => !used.has(k) && normalizeName(n) === key);
    if (j >= 0) {
      pairs[i] = j;
      used.add(j);
    }
  });
  // 2. 精油が同じ
  expected.forEach((e, i) => {
    if (pairs[i] !== null) return;
    const j = read.findIndex((r, k) => !used.has(k) && r.oil_id !== "" && r.oil_id === e.oil_id);
    if (j >= 0) {
      pairs[i] = j;
      used.add(j);
    }
  });

  const lines: LineCheck[] = expected.map((e, i) => {
    const j = pairs[i];
    const base = {
      written: e.written,
      oil_id: e.oil_id,
      expected_amount: Number(e.amount),
      expected_group: e.note_group ?? "",
    };
    if (j === null) {
      return { ...base, read_amount: null, read_group: "", read_name: null, status: "missing" as const };
    }
    const readAmount = read[j].amount === "" ? null : Number(read[j].amount);
    const amountOk = sameNumber(readAmount, base.expected_amount);
    const groupOk = !base.expected_group || read[j].note_group === base.expected_group;
    return {
      ...base,
      read_amount: readAmount,
      read_group: read[j].note_group,
      read_name: readNames[j],
      status: !amountOk ? ("amount" as const) : !groupOk ? ("group" as const) : ("ok" as const),
    };
  });

  const matched = lines.filter((l) => l.status !== "missing");
  const withGroup = matched.filter((l) => l.expected_group);
  return {
    picked_index: index,
    n_expected: expected.length,
    n_matched: matched.length,
    n_amount_ok: matched.filter((l) => l.status === "ok" || l.status === "group").length,
    n_group_total: withGroup.length,
    n_group_ok: withGroup.filter((l) => l.read_group === l.expected_group).length,
    n_missing: lines.length - matched.length,
    n_extra: readNames.length - used.size,
    details: { lines, extras: readNames.filter((_, k) => !used.has(k)) },
  };
}

// 写真に処方が2つ以上あるときは、正解といちばんよく合う処方で採点する
export function scoreReading(
  expected: FinalLine[],
  draft: Draft,
  oils: { id: string; name: string }[],
  aliases: OilAlias[],
): Score {
  if (!draft.formulas || draft.formulas.length === 0) {
    return {
      picked_index: -1,
      n_expected: expected.length,
      n_matched: 0,
      n_amount_ok: 0,
      n_group_total: 0,
      n_group_ok: 0,
      n_missing: expected.length,
      n_extra: 0,
      details: {
        lines: expected.map((e) => ({
          written: e.written,
          oil_id: e.oil_id,
          expected_amount: Number(e.amount),
          read_amount: null,
          expected_group: e.note_group ?? "",
          read_group: "",
          read_name: null,
          status: "missing",
        })),
        extras: [],
      },
    };
  }
  const scores = draft.formulas.map((_, i) => scoreOne(expected, draft, i, oils, aliases));
  return scores.reduce((best, s) =>
    s.n_amount_ok > best.n_amount_ok || (s.n_amount_ok === best.n_amount_ok && s.n_matched > best.n_matched) ? s : best,
  );
}

// 押す前に見せる費用の目安(【推測】写真1枚で、入力 約3,000・出力 約3,000 トークンと見込む。1ドル150円で計算)
export const EST_TOKENS = { input: 3000, output: 3000 };
export const YEN_PER_USD = 150;

// 処方と、確認の結果まわりの共通の定義

export const GROUP_LABELS: Record<string, string> = {
  top: "トップ",
  middle: "ミドル",
  base: "ベース",
};

export const DECISION_LABELS: Record<string, string> = {
  accept: "意図して超える",
  change: "処方を変える",
  hold: "保留",
};

export type FormulaStatus = {
  id: string;
  fragrance_pct: number;
  completed_on: string;
  memo: string | null;
  current_sale_names: string | null;
  all_sale_names: string | null;
  line_count: number;
  n_red: number;
  n_yellow: number;
  n_near: number;
  n_unconfirmed: number;
  n_needs_review: number;
  n_undecided: number;
  last_checked_at: string | null;
};

export type LineInput = {
  oil_id: string;
  amount: string;
  dilution_pct: string;
  note_group: string;
};

// 確認の結果の1行(ビュー formula_check_board)
export type Contributor = {
  oil_id?: string;
  oil_name?: string;
  oil_conc_pct?: number;
  oil_share?: number;
  source?: "annex" | "oil";
  match_type?: "exact" | "approx" | null;
  ncs_name?: string | null;
  iso_category?: string | null;
  match_reason?: string | null;
  constituent_name?: string | null;
  annex_pct?: number | null;
  contribution_pct?: number;
  // 足し算のグループのとき
  standard_key?: string;
  standard_name?: string;
  total_pct?: number;
  limit_pct?: number;
  ratio?: number;
};

export type CheckItem = {
  formula_id: string;
  amendment: number;
  item_type: "standard" | "sum_group" | "oil" | "annex_value";
  item_key: string;
  item_name: string;
  intrinsic_property: string | null;
  total_pct: number | null;
  limit_pct: number | null;
  ratio: number | null;
  level: "red" | "yellow" | "near" | "ok" | "unconfirmed" | "needs_review";
  has_approx: boolean;
  contributors: Contributor[];
  note: string | null;
  level_order: number;
  decision: string | null;
  judgment_reason: string | null;
  decided_at: string | null;
  ratio_at_decision: number | null;
  judgment_state: "none" | "fix" | "undecided" | "changed" | "hold" | "change" | "accepted";
};

// 数字を、意味のある桁だけで表示する(例:0.00125、2.5、18.1)
export function fmt(n: number | null | undefined, digits = 3): string {
  if (n === null || n === undefined || Number.isNaN(Number(n))) return "-";
  const v = Number(n);
  if (v === 0) return "0";
  return String(Number(v.toPrecision(digits)));
}

export function fmtRatio(r: number | null | undefined): string {
  if (r === null || r === undefined) return "-";
  const v = Number(r);
  return `${v >= 10 ? v.toFixed(1) : v.toFixed(2)}倍`;
}

// 日本時間の今日(YYYY-MM-DD)
export function todayJst(): string {
  return new Date(Date.now() + 9 * 60 * 60 * 1000).toISOString().slice(0, 10);
}

export function fmtDateTimeJst(iso: string): string {
  return new Date(new Date(iso).getTime() + 9 * 60 * 60 * 1000).toISOString().slice(0, 16).replace("T", " ");
}

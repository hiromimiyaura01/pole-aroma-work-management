// 精油まわりの共通の定義

export const AMENDMENT = 51; // 使う IFRA の改正(第51次)

export const KIND_LABELS: Record<string, string> = {
  essential_oil: "精油",
  absolute: "アブソリュート",
  co2: "CO2 抽出",
  concrete: "コンクリート",
  other: "そのほか",
};

// 抽出部位(複数選べる)
export const PLANT_PARTS = [
  "花", "蕾", "葉", "枝", "茎", "全草", "果皮", "果実", "種子",
  "根", "根茎", "樹皮", "木部", "樹脂", "苔", "そのほか",
];

// 抽出方法(1つ選ぶ)
export const EXTRACTION_METHODS = [
  "水蒸気蒸留", "圧搾", "溶剤抽出", "CO2 抽出", "水蒸気蒸留(精留)", "そのほか", "不明",
];

export const MATCH_LABELS: Record<string, string> = {
  exact: "一致",
  approx: "近似",
  none: "Annex になし",
};

export type Oil = {
  id: string;
  name: string;
  botanical_name: string | null;
  kind: string;
  plant_part: string[] | null;
  extraction_method: string | null;
  brand: string | null;
  memo: string | null;
};

export type OilStatus = Oil & {
  annex_match: string | null;
  annex_ncs_name: string | null;
  annex_iso_category: string | null;
  annex_reason: string | null;
  standard_link_count: number;
};

// 検索の言葉から、Supabase の検索式を壊す文字を取り除く
export function cleanSearch(q: string | string[] | undefined): string {
  const s = Array.isArray(q) ? q[0] : q;
  return (s ?? "").replace(/[,()%*\\]/g, " ").trim().slice(0, 60);
}

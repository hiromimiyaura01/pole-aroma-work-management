import { Suspense } from "react";
import Link from "next/link";
import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { AMENDMENT } from "@/lib/oils";
import {
  DECISION_LABELS,
  GROUP_LABELS,
  fmt,
  fmtDateTimeJst,
  fmtRatio,
  todayJst,
  type CheckItem,
  type Contributor,
  type FormulaStatus,
} from "@/lib/formulas";
import { FormulaForm } from "@/components/FormulaForm";
import { SubmitButton } from "@/components/SubmitButton";
import { Badge, Notice, inputClass, buttonClass, subButtonClass } from "@/components/ui";
import {
  updateFormula,
  deleteFormula,
  addSaleName,
  setSaleEnd,
  removeSaleName,
  recordJudgment,
  recordCheck,
} from "../actions";

type SearchParams = { [key: string]: string | string[] | undefined };

type Line = {
  line_id: number;
  line_no: number;
  oil_id: string;
  amount: number;
  dilution_pct: number;
  note_group: string | null;
  oil_share: number;
  conc_in_product_pct: number;
};

type SaleName = { id: number; sale_name: string; sold_from: string; sold_until: string | null };

const sectionClass = "flex flex-col gap-3 rounded border border-gray-200 p-4 dark:border-gray-700";

// ---- 確認の結果(R11)---------------------------------------------------
const LEVEL_BADGE: Record<CheckItem["level"], { tone: "danger" | "warn" | "info" | "muted" | "ok"; label: string }> = {
  red: { tone: "danger", label: "赤:使用禁止の基準" },
  yellow: { tone: "warn", label: "黄:上限を超えている" },
  near: { tone: "info", label: "上限に近い" },
  unconfirmed: { tone: "muted", label: "未確認の精油" },
  needs_review: { tone: "muted", label: "確認が必要" },
  ok: { tone: "ok", label: "上限の 0.8 倍より小さい" },
};

// 近似のとき:どの参考値で代用したか
function ApproxNote({ c }: { c: Contributor }) {
  if (c.match_type !== "approx") return null;
  return (
    <span className="block text-xs text-blue-800 dark:text-blue-200">
      近似:{c.ncs_name}(ISO {c.iso_category ?? "-"})の参考値で代用{c.match_reason && `(${c.match_reason})`}
    </span>
  );
}

function Contributors({ item }: { item: CheckItem }) {
  if (item.item_type === "sum_group") {
    return (
      <ul className="flex flex-col gap-1 text-xs">
        {item.contributors.map((c) => (
          <li key={c.standard_key}>
            {c.standard_name}:完成品中 {fmt(c.total_pct)}% ÷ 上限 {fmt(c.limit_pct)}% = {fmtRatio(c.ratio)}
          </li>
        ))}
      </ul>
    );
  }
  return (
    <ul className="flex flex-col gap-1 text-xs">
      {item.contributors.map((c, i) => (
        <li key={`${c.oil_id}-${i}`}>
          {c.source === "oil" ? (
            <>
              {c.oil_name}:精油そのものが完成品中 {fmt(c.oil_conc_pct)}%
            </>
          ) : (
            <>
              {c.oil_name}:完成品中 {fmt(c.oil_conc_pct)}% × 含有率 {fmt(c.annex_pct)}% = {fmt(c.contribution_pct)}%
            </>
          )}
          <ApproxNote c={c} />
        </li>
      ))}
    </ul>
  );
}

function Numbers({ item }: { item: CheckItem }) {
  if (item.item_type === "sum_group") {
    return (
      <p className="text-sm">
        「使用量 ÷ 上限」の合計:<strong>{fmtRatio(item.ratio)}</strong>(1倍を超えないかで見る)
      </p>
    );
  }
  if (item.level === "red") {
    return <p className="text-sm">完成品中 {fmt(item.total_pct)}%(この基準は、カテゴリ 11B では使用禁止)</p>;
  }
  if (item.limit_pct === null) {
    return <p className="text-sm">完成品中 {fmt(item.total_pct)}%</p>;
  }
  return (
    <p className="text-sm">
      完成品中 {fmt(item.total_pct)}% / 11B の上限 {fmt(item.limit_pct)}% = 上限の <strong>{fmtRatio(item.ratio)}</strong>
    </p>
  );
}

function JudgmentForm({ item }: { item: CheckItem }) {
  return (
    <form action={recordJudgment} className="flex flex-col gap-2 border-t border-gray-200 pt-3 dark:border-gray-700">
      <input type="hidden" name="id" value={item.formula_id} />
      <input type="hidden" name="item_type" value={item.item_type} />
      <input type="hidden" name="item_key" value={item.item_key} />
      <div className="flex flex-wrap gap-x-4 gap-y-2 text-sm">
        {Object.entries(DECISION_LABELS).map(([value, label]) => (
          <label key={value} className="flex items-center gap-1">
            <input type="radio" name="decision" value={value} required defaultChecked={item.decision === value} className="h-4 w-4" />
            {label}
          </label>
        ))}
      </div>
      <input
        name="reason"
        defaultValue={item.judgment_reason ?? ""}
        placeholder="理由(「意図して超える」ときは必須)"
        className={inputClass}
      />
      <div>
        <SubmitButton className={subButtonClass} pendingText="記録中…">
          判断を記録する
        </SubmitButton>
      </div>
    </form>
  );
}

function JudgmentNote({ item }: { item: CheckItem }) {
  if (!item.decision || !item.decided_at) return null;
  return (
    <p className="text-xs text-gray-600 dark:text-gray-300">
      {item.judgment_state === "changed" && (
        <strong className="block text-amber-800 dark:text-amber-200">
          判断を記録したあとで、数字が変わりました(記録したとき:{fmtRatio(item.ratio_at_decision)})。もう一度見てください。
        </strong>
      )}
      記録済みの判断:{DECISION_LABELS[item.decision] ?? item.decision}({fmtDateTimeJst(item.decided_at)})
      {item.judgment_reason && `/理由:${item.judgment_reason}`}
    </p>
  );
}

function ItemCard({ item, withForm }: { item: CheckItem; withForm: boolean }) {
  const badge = LEVEL_BADGE[item.level];
  return (
    <li className="flex flex-col gap-2 rounded bg-gray-50 p-3 dark:bg-gray-900">
      <p className="flex flex-wrap items-center gap-2">
        <Badge tone={badge.tone}>{badge.label}</Badge>
        {item.has_approx && <Badge tone="info">近似の参考値を含む</Badge>}
      </p>
      <p className="font-medium">
        {item.item_name}
        {item.item_type === "standard" && <span className="text-xs font-normal text-gray-500">({item.item_key})</span>}
      </p>
      {item.intrinsic_property && <p className="text-xs text-gray-500">規制の理由:{item.intrinsic_property}</p>}
      <Numbers item={item} />
      <Contributors item={item} />
      {item.note && <p className="text-xs text-gray-500">{item.note}</p>}
      <JudgmentNote item={item} />
      {withForm && <JudgmentForm item={item} />}
    </li>
  );
}

function FixCard({ item }: { item: CheckItem }) {
  const c = item.contributors[0];
  return (
    <li className="flex flex-col gap-1 rounded bg-gray-50 p-3 text-sm dark:bg-gray-900">
      <p>
        <Badge tone="muted">{LEVEL_BADGE[item.level].label}</Badge>{" "}
        {item.item_type === "oil" ? (
          <span className="font-medium">{item.item_name}</span>
        ) : (
          <span className="font-medium">
            {c?.oil_name} の {item.item_name}
          </span>
        )}
      </p>
      <p className="text-xs">
        完成品中 {fmt(c?.oil_conc_pct)}%
        {item.item_type === "oil" && c?.oil_share !== undefined && `(精油全体の ${fmt(Number(c.oil_share) * 100)}%)`}
        ・{item.note}
      </p>
      {item.item_type === "oil" && c?.oil_id && (
        <Link href={`/oils/${c.oil_id}`} className="text-xs underline">
          この精油の Annex との結びつきを選ぶ →
        </Link>
      )}
      {item.item_type === "standard" && (
        <p className="text-xs">基準の本文(IFRA の Standards Library の PDF)で、扱いを確かめてください。</p>
      )}
    </li>
  );
}

async function CheckSection({ formula }: { formula: FormulaStatus }) {
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("formula_check_board")
    .select("*")
    .eq("formula_id", formula.id)
    .eq("amendment", AMENDMENT)
    .order("level_order")
    .order("ratio", { ascending: false, nullsFirst: false });
  if (error) return <p className="text-sm text-red-600">確認の結果を読み込めませんでした:{error.message}</p>;
  const items = (data ?? []) as CheckItem[];

  // 見る順:判断がいるもの → 直す・確かめるもの → 記録済み(目立たせない)→ 気になる点なし
  const attention = items.filter((i) => ["undecided", "changed", "hold", "change"].includes(i.judgment_state));
  const fixes = items.filter((i) => i.judgment_state === "fix");
  const accepted = items.filter((i) => i.judgment_state === "accepted");
  const oks = items.filter((i) => i.judgment_state === "none");

  return (
    <section className={sectionClass}>
      <h2 className="font-bold">確認の結果(IFRA 第{AMENDMENT}次改正・カテゴリ 11B)</h2>
      <p className="flex flex-wrap gap-1">
        {formula.n_red > 0 && <Badge tone="danger">赤 {formula.n_red}</Badge>}
        {formula.n_yellow > 0 && <Badge tone="warn">黄 {formula.n_yellow}</Badge>}
        {formula.n_near > 0 && <Badge tone="info">上限に近い {formula.n_near}</Badge>}
        {formula.n_unconfirmed > 0 && <Badge tone="muted">未確認の精油あり {formula.n_unconfirmed}</Badge>}
        {formula.n_needs_review > 0 && <Badge tone="muted">確認が必要 {formula.n_needs_review}</Badge>}
        {attention.length + fixes.length + accepted.length === 0 && <Badge tone="ok">気になる点なし</Badge>}
      </p>
      <p className="text-xs text-gray-500">
        成分の量は、IFRA の Annex の典型値から計算した参考値です。実際の瓶(ロット)では変わります。上限を超えるかどうかの判断は、事業者が行います。
      </p>

      {attention.length > 0 && (
        <>
          <h3 className="text-sm font-bold">判断がいるもの({attention.length}件)</h3>
          <ul className="flex flex-col gap-3">
            {attention.map((i) => (
              <ItemCard key={`${i.item_type}-${i.item_key}`} item={i} withForm />
            ))}
          </ul>
        </>
      )}

      {fixes.length > 0 && (
        <>
          <h3 className="text-sm font-bold">まだ確かめられていないもの({fixes.length}件)</h3>
          <p className="text-xs text-gray-500">
            未確認の精油は、規制成分を計算に入れられていません。「赤・黄なし」でも、問題なしとは言えない状態です。
          </p>
          <ul className="flex flex-col gap-2">
            {fixes.map((i) => (
              <FixCard key={`${i.item_type}-${i.item_key}`} item={i} />
            ))}
          </ul>
        </>
      )}

      {accepted.length > 0 && (
        <details>
          <summary className="cursor-pointer text-sm">「意図して超える」と記録済み({accepted.length}件)</summary>
          <ul className="mt-3 flex flex-col gap-3">
            {accepted.map((i) => (
              <ItemCard key={`${i.item_type}-${i.item_key}`} item={i} withForm />
            ))}
          </ul>
        </details>
      )}

      {oks.length > 0 && (
        <details>
          <summary className="cursor-pointer text-sm">上限の 0.8 倍より小さい成分({oks.length}件)</summary>
          <ul className="mt-3 flex flex-col gap-1 text-xs">
            {oks.map((i) => (
              <li key={`${i.item_type}-${i.item_key}`}>
                {i.item_name}:完成品中 {fmt(i.total_pct)}%
                {i.limit_pct !== null && ` / 上限 ${fmt(i.limit_pct)}% = ${fmtRatio(i.ratio)}`}
                {i.item_type === "sum_group" && ` 合計 ${fmtRatio(i.ratio)}`}
                {i.has_approx && "(近似の参考値を含む)"}
              </li>
            ))}
          </ul>
        </details>
      )}

      <div className="flex flex-col gap-2 border-t border-gray-200 pt-3 dark:border-gray-700">
        <p className="text-sm">
          {formula.last_checked_at
            ? `最後に確認を記録した日時:${fmtDateTimeJst(formula.last_checked_at)}`
            : "まだ、確認を記録していません。"}
        </p>
        <form action={recordCheck}>
          <input type="hidden" name="id" value={formula.id} />
          <SubmitButton className={buttonClass} pendingText="記録中…">
            この結果を見た、と記録する
          </SubmitButton>
        </form>
        <p className="text-xs text-gray-500">今の結果と判断の状態を、そのまま保存します(あとで結果が変わったときに、比べられます)。</p>
      </div>
    </section>
  );
}

// ---- 配合 --------------------------------------------------------------
function LinesSection({ lines, oilNames }: { lines: Line[]; oilNames: Map<string, string> }) {
  const total = lines.reduce((t, l) => t + Number(l.amount), 0);
  return (
    <section className={sectionClass}>
      <h2 className="font-bold">配合</h2>
      <table className="w-full text-sm">
        <thead>
          <tr className="border-b border-gray-200 text-left text-xs text-gray-500 dark:border-gray-700">
            <th className="py-1 font-normal">精油</th>
            <th className="py-1 text-right font-normal">数字</th>
            <th className="py-1 text-right font-normal">完成品中</th>
          </tr>
        </thead>
        <tbody>
          {lines.map((l) => (
            <tr key={l.line_id} className="border-b border-gray-100 dark:border-gray-800">
              <td className="py-1">
                <Link href={`/oils/${l.oil_id}`} className="underline">
                  {oilNames.get(l.oil_id) ?? "(不明)"}
                </Link>
                <span className="block text-xs text-gray-500">
                  {l.note_group ? GROUP_LABELS[l.note_group] : ""}
                  {Number(l.dilution_pct) !== 10 && ` 希釈 ${fmt(l.dilution_pct)}%`}
                </span>
              </td>
              <td className="py-1 text-right">{fmt(l.amount, 6)}</td>
              <td className="py-1 text-right">{fmt(l.conc_in_product_pct)}%</td>
            </tr>
          ))}
          <tr>
            <td className="py-1 text-xs text-gray-500">合計</td>
            <td className="py-1 text-right">{fmt(total, 6)}</td>
            <td className="py-1 text-right">{fmt(lines.reduce((t, l) => t + Number(l.conc_in_product_pct), 0))}%</td>
          </tr>
        </tbody>
      </table>
    </section>
  );
}

// ---- 販売名 ------------------------------------------------------------
function SaleNamesSection({ formulaId, names }: { formulaId: string; names: SaleName[] }) {
  return (
    <section className={sectionClass}>
      <h2 className="font-bold">販売名</h2>
      <p className="text-xs text-gray-500">販売名がついた処方を「販売用」、つかない処方を「練習」として数えます。</p>
      {names.length === 0 && <p className="text-sm text-gray-500">販売名はついていません。</p>}
      <ul className="flex flex-col gap-3">
        {names.map((n) => (
          <li key={n.id} className="flex flex-col gap-2 rounded bg-gray-50 p-3 text-sm dark:bg-gray-900">
            <p>
              <span className="font-medium">{n.sale_name}</span>
              <span className="text-xs text-gray-500">
                {" "}
                {n.sold_from} 〜 {n.sold_until ?? "販売中"}
              </span>
            </p>
            <form action={setSaleEnd} className="flex flex-wrap items-center gap-2">
              <input type="hidden" name="id" value={formulaId} />
              <input type="hidden" name="sale_id" value={n.id} />
              <input name="sold_until" type="date" defaultValue={n.sold_until ?? ""} aria-label="販売終了日" className={`${inputClass} max-w-44`} />
              <SubmitButton className={subButtonClass} pendingText="保存中…">
                販売終了日を保存
              </SubmitButton>
            </form>
            <form action={removeSaleName}>
              <input type="hidden" name="id" value={formulaId} />
              <input type="hidden" name="sale_id" value={n.id} />
              <SubmitButton className="text-xs text-red-600 underline" pendingText="消しています…">
                この販売名を消す(間違えてつけたとき)
              </SubmitButton>
            </form>
          </li>
        ))}
      </ul>
      <form action={addSaleName} className="flex flex-col gap-2 border-t border-gray-200 pt-3 dark:border-gray-700">
        <input type="hidden" name="id" value={formulaId} />
        <input name="sale_name" required placeholder="販売名" className={inputClass} />
        <label className="flex items-center gap-2 text-sm">
          販売開始日
          <input name="sold_from" type="date" required defaultValue={todayJst()} className={`${inputClass} max-w-44`} />
        </label>
        <div>
          <SubmitButton className={subButtonClass}>販売名をつける</SubmitButton>
        </div>
      </form>
    </section>
  );
}

// ---- 画面全体 ---------------------------------------------------------
async function FormulaDetail({ params, searchParams }: PageProps<"/formulas/[id]">) {
  const { id } = await params;
  const sp = (await searchParams) as SearchParams;
  if (!/^P[0-9]{5}$/.test(id)) notFound();

  const supabase = await createClient();
  const [{ data: status }, { data: lineRows }, { data: oilRows }, { data: nameRows }] = await Promise.all([
    supabase.from("formula_status").select("*").eq("id", id).eq("amendment", AMENDMENT).maybeSingle(),
    supabase.from("formula_line_concentrations").select("*").eq("formula_id", id).order("line_no"),
    supabase.from("essential_oils").select("id, name").order("name"),
    supabase.from("formula_sale_names").select("id, sale_name, sold_from, sold_until").eq("formula_id", id).order("sold_from"),
  ]);
  if (!status) notFound();
  const formula = status as FormulaStatus;
  const lines = (lineRows ?? []) as Line[];
  const oils = (oilRows ?? []) as { id: string; name: string }[];
  const oilNames = new Map(oils.map((o) => [o.id, o.name]));

  return (
    <>
      <h1 className="text-xl font-bold">
        {formula.id}
        {formula.current_sale_names && <span className="ml-2 text-base font-normal">{formula.current_sale_names}</span>}
      </h1>
      <p className="text-sm text-gray-600 dark:text-gray-300">
        ピローミスト(カテゴリ 11B)・賦香率 {formula.fragrance_pct}%・完成 {formula.completed_on}
        {formula.memo && <span className="block">メモ:{formula.memo}</span>}
      </p>
      <Notice
        searchParams={sp}
        alreadyText="この入力は、すでに登録済みです(二重に登録しないよう、2回目は保存していません)。変更があれば、下の「処方を直す」から直してください。"
      />
      <CheckSection formula={formula} />
      <LinesSection lines={lines} oilNames={oilNames} />
      <SaleNamesSection formulaId={formula.id} names={(nameRows ?? []) as SaleName[]} />
      <details className="rounded border border-gray-200 p-4 dark:border-gray-700">
        <summary className="cursor-pointer font-bold">処方を直す</summary>
        <p className="mt-2 text-xs text-gray-500">
          書き間違いを直すためのものです。処方そのものを変えたときは、前の処方を残すために、新しい処方として登録してください。
        </p>
        <div className="mt-4">
          <FormulaForm
            oils={oils}
            action={updateFormula}
            submitLabel="保存する"
            formulaId={formula.id}
            defaults={{
              fragrance_pct: String(formula.fragrance_pct),
              completed_on: formula.completed_on,
              memo: formula.memo ?? "",
              lines: lines.map((l) => ({
                oil_id: l.oil_id,
                amount: String(l.amount),
                dilution_pct: String(l.dilution_pct),
                note_group: l.note_group ?? "",
              })),
            }}
          />
        </div>
        <form action={deleteFormula} className="mt-6 border-t border-gray-200 pt-4 dark:border-gray-700">
          <input type="hidden" name="id" value={formula.id} />
          <SubmitButton className="text-sm text-red-600 underline" pendingText="消しています…">
            この処方を消す(配合・販売名・判断・確認の記録も消えます)
          </SubmitButton>
        </form>
      </details>
    </>
  );
}

export default function FormulaPage(props: PageProps<"/formulas/[id]">) {
  return (
    <main className="mx-auto flex w-full max-w-xl flex-1 flex-col gap-4 px-4 py-6">
      <Link href="/formulas" className="text-sm underline">
        ← 処方の一覧
      </Link>
      <Suspense fallback={<p className="text-sm text-gray-500">読み込み中…</p>}>
        <FormulaDetail {...props} />
      </Suspense>
    </main>
  );
}

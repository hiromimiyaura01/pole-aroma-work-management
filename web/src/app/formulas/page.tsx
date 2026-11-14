import { Suspense } from "react";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { AMENDMENT } from "@/lib/oils";
import { type FormulaStatus } from "@/lib/formulas";
import { Badge, buttonClass } from "@/components/ui";

function StatusBadges({ f }: { f: FormulaStatus }) {
  const clean = f.n_red + f.n_yellow + f.n_near + f.n_unconfirmed + f.n_needs_review === 0;
  return (
    <span className="flex flex-wrap gap-1">
      {f.n_red > 0 && <Badge tone="danger">赤 {f.n_red}</Badge>}
      {f.n_yellow > 0 && <Badge tone="warn">黄 {f.n_yellow}</Badge>}
      {f.n_near > 0 && <Badge tone="info">上限に近い {f.n_near}</Badge>}
      {f.n_unconfirmed > 0 && <Badge tone="muted">未確認の精油 {f.n_unconfirmed}</Badge>}
      {f.n_needs_review > 0 && <Badge tone="muted">本文の確認 {f.n_needs_review}</Badge>}
      {clean && <Badge tone="ok">気になる点なし</Badge>}
      {f.n_undecided > 0 && <Badge tone="warn">判断待ち {f.n_undecided}</Badge>}
      {!f.last_checked_at && <Badge tone="muted">確認の記録なし</Badge>}
    </span>
  );
}

async function FormulaList() {
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("formula_status")
    .select("*")
    .eq("amendment", AMENDMENT)
    .order("id", { ascending: false });

  if (error) return <p className="text-sm text-red-600">読み込めませんでした:{error.message}</p>;
  const formulas = (data ?? []) as FormulaStatus[];

  return (
    <>
      <p className="text-sm text-gray-600 dark:text-gray-300">{formulas.length}件</p>
      <ul className="flex flex-col divide-y divide-gray-200 dark:divide-gray-700">
        {formulas.map((f) => (
          <li key={f.id}>
            <Link href={`/formulas/${f.id}`} className="flex flex-col gap-1 py-3 hover:bg-gray-50 dark:hover:bg-gray-900">
              <span className="font-medium">
                {f.id}
                {f.current_sale_names && `・${f.current_sale_names}`}
                {!f.current_sale_names && f.all_sale_names && `・${f.all_sale_names}(販売終了)`}
              </span>
              <span className="text-xs text-gray-500">
                {f.completed_on}・賦香率 {f.fragrance_pct}%・精油 {f.line_count}行
                {!f.all_sale_names && "・販売名なし(練習)"}
              </span>
              <StatusBadges f={f} />
            </Link>
          </li>
        ))}
      </ul>
      {formulas.length === 0 && <p className="text-sm text-gray-500">まだ登録されていません。</p>}
    </>
  );
}

export default function FormulasPage() {
  return (
    <main className="mx-auto flex w-full max-w-xl flex-1 flex-col gap-4 px-4 py-6">
      <Link href="/" className="text-sm underline">
        ← トップ
      </Link>
      <div className="flex items-center justify-between">
        <h1 className="text-xl font-bold">処方</h1>
        <Link href="/formulas/new" className={buttonClass}>
          + 登録
        </Link>
      </div>
      <Suspense fallback={<p className="text-sm text-gray-500">読み込み中…</p>}>
        <FormulaList />
      </Suspense>
      <p className="text-xs text-gray-500">
        確認の結果は、IFRA 第{AMENDMENT}次改正のカテゴリ 11B と、Annex の典型値にもとづく参考情報です。最終的な判断は、事業者が行います。
      </p>
    </main>
  );
}

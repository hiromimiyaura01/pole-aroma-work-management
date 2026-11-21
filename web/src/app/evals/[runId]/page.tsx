import { Suspense } from "react";
import Link from "next/link";
import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { GROUP_LABELS, fmtDateTimeJst } from "@/lib/formulas";
import { EVAL_MODELS } from "@/lib/reader";
import type { LineCheck } from "@/lib/evals";
import { Badge } from "@/components/ui";

const UUID_RE = /^[0-9a-f-]{36}$/;
const STATUS: Record<LineCheck["status"], { label: string; tone: "ok" | "danger" | "warn" | "muted" }> = {
  ok: { label: "合っていた", tone: "ok" },
  amount: { label: "数字が違う", tone: "danger" },
  group: { label: "グループが違う", tone: "warn" },
  missing: { label: "読み取れなかった", tone: "danger" },
};
const g = (v: string) => (v ? (GROUP_LABELS[v] ?? v) : "-");

async function RunDetail({ params }: PageProps<"/evals/[runId]">) {
  const { runId } = await params;
  if (!UUID_RE.test(runId)) notFound();
  const supabase = await createClient();
  const [{ data: run }, { data: results }, { data: oils }] = await Promise.all([
    supabase.from("eval_runs").select("*").eq("id", runId).maybeSingle(),
    supabase
      .from("eval_results")
      .select("reading_id, status, error, served_model, duration_ms, n_expected, n_amount_ok, n_missing, n_extra, details, formula_readings(saved_formula_id, photo_name)")
      .eq("run_id", runId)
      .order("created_at"),
    supabase.from("essential_oils").select("id, name"),
  ]);
  if (!run) notFound();
  const oilName = new Map((oils ?? []).map((o) => [o.id as string, o.name as string]));

  return (
    <>
      <h1 className="text-xl font-bold">{EVAL_MODELS[run.model]?.label ?? run.model} の採点</h1>
      <p className="text-xs text-gray-500">
        {fmtDateTimeJst(run.created_at)}・指示文 {run.prompt_version}・{run.effort}
      </p>
      {(results ?? []).map((r) => {
        const fr = (Array.isArray(r.formula_readings) ? r.formula_readings[0] : r.formula_readings) as
          | { saved_formula_id: string | null; photo_name: string | null }
          | null;
        const details = r.details as { lines: LineCheck[]; extras: string[] } | null;
        return (
          <section key={r.reading_id} className="flex flex-col gap-2 rounded border border-gray-200 p-3 dark:border-gray-700">
            <h2 className="font-medium">
              <Link href={`/formulas/readings/${r.reading_id}`} className="underline">
                {fr?.saved_formula_id ?? "処方"}
              </Link>
              <span className="ml-2 text-xs font-normal text-gray-500">
                {r.status === "ok"
                  ? `${r.n_amount_ok}/${r.n_expected} 行の数字が一致・抜け ${r.n_missing}・余分 ${r.n_extra}・${((r.duration_ms ?? 0) / 1000).toFixed(1)}秒`
                  : `失敗:${r.error}`}
                {r.served_model && r.served_model !== run.model && `・実際に答えたモデル ${r.served_model}`}
              </span>
            </h2>
            {details && (
              <ul className="flex flex-col gap-1 text-sm">
                {details.lines.map((l, i) => (
                  <li key={i} className="flex flex-wrap items-center gap-2">
                    <Badge tone={STATUS[l.status].tone}>{STATUS[l.status].label}</Badge>
                    <span>{l.written ?? oilName.get(l.oil_id) ?? "(人が足した行)"}</span>
                    {l.status !== "ok" && (
                      <span className="text-xs text-gray-500">
                        正解 {l.expected_amount}・{g(l.expected_group)}/読み取り {l.read_amount ?? "-"}・{g(l.read_group)}
                        {l.read_name && l.read_name !== l.written ? `(「${l.read_name}」と読んだ)` : ""}
                      </span>
                    )}
                  </li>
                ))}
                {details.extras.length > 0 && <li className="text-xs text-gray-500">余分に読んだ行:{details.extras.join("、")}</li>}
              </ul>
            )}
          </section>
        );
      })}
      {(results ?? []).length === 0 && <p className="text-sm text-gray-500">まだ結果がありません。</p>}
    </>
  );
}

export default function EvalRunPage(props: PageProps<"/evals/[runId]">) {
  return (
    <main className="mx-auto flex w-full max-w-xl flex-1 flex-col gap-4 px-4 py-6">
      <Link href="/evals" className="text-sm underline">
        ← 読み取りの精度
      </Link>
      <Suspense fallback={<p className="text-sm text-gray-500">読み込み中…</p>}>
        <RunDetail {...props} />
      </Suspense>
    </main>
  );
}

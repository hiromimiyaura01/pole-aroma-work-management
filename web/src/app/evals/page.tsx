import { Suspense } from "react";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { fmtDateTimeJst } from "@/lib/formulas";
import { EVAL_MODELS, PROMPT_VERSION, readerEffort, readerModel } from "@/lib/reader";
import { EST_TOKENS, YEN_PER_USD } from "@/lib/evals";
import { EvalRunner } from "@/components/EvalRunner";
import { SubmitButton } from "@/components/SubmitButton";
import { Notice, inputClass } from "@/components/ui";
import { finishEvalBatch, runEvalCase, setEvalExcluded, startEvalBatch } from "./actions";

async function EvalsNotice({ searchParams }: Pick<PageProps<"/evals">, "searchParams">) {
  return <Notice searchParams={await searchParams} />;
}

const pct = (v: number | null) => (v === null || v === undefined ? "-" : `${(Number(v) * 100).toFixed(1)}%`);
const sec = (ms: number | null) => (ms === null || ms === undefined ? "-" : `${(Number(ms) / 1000).toFixed(1)}秒`);
const yen = (usd: number | null) =>
  usd === null || usd === undefined ? "-" : Number(usd) * YEN_PER_USD < 1 ? "1円未満" : `${(Number(usd) * YEN_PER_USD).toFixed(1)}円`;

type Summary = {
  run_id: string;
  batch_id: string;
  created_at: string;
  model: string;
  prompt_version: string;
  effort: string;
  n_cases: number;
  n_done: number;
  n_failed: number;
  n_expected: number | null;
  n_missing: number | null;
  n_extra: number | null;
  amount_accuracy: number | null;
  group_accuracy: number | null;
  avg_duration_ms: number | null;
  avg_cost_usd: number | null;
};

async function Results() {
  const supabase = await createClient();
  const { data, error } = await supabase.from("eval_run_summary").select("*").order("created_at", { ascending: false }).limit(30);
  if (error) return <p className="text-sm text-red-600">読み込めませんでした:{error.message}</p>;
  const rows = (data ?? []) as Summary[];
  if (rows.length === 0) return <p className="text-sm text-gray-500">まだ採点していません。</p>;

  return (
    <div className="overflow-x-auto">
      <table className="w-full text-left text-sm">
        <thead className="text-xs text-gray-500">
          <tr>
            <th className="py-1 pr-2">日時・モデル</th>
            <th className="py-1 pr-2">数字の一致率</th>
            <th className="py-1 pr-2">グループ</th>
            <th className="py-1 pr-2">抜け/余分</th>
            <th className="py-1 pr-2">1枚の時間</th>
            <th className="py-1">1枚の費用</th>
          </tr>
        </thead>
        <tbody className="divide-y divide-gray-200 dark:divide-gray-700">
          {rows.map((r) => (
            <tr key={r.run_id}>
              <td className="py-2 pr-2">
                <Link href={`/evals/${r.run_id}`} className="underline">
                  {EVAL_MODELS[r.model]?.label ?? r.model}
                </Link>
                <span className="block text-xs text-gray-500">
                  {fmtDateTimeJst(r.created_at)}・指示文 {r.prompt_version}・{r.effort}・{r.n_done}/{r.n_cases}枚
                  {r.n_failed > 0 && `・失敗 ${r.n_failed}`}
                </span>
              </td>
              <td className="py-2 pr-2">{pct(r.amount_accuracy)}</td>
              <td className="py-2 pr-2">{pct(r.group_accuracy)}</td>
              <td className="py-2 pr-2">
                {r.n_missing ?? "-"}/{r.n_extra ?? "-"}
              </td>
              <td className="py-2 pr-2">{sec(r.avg_duration_ms)}</td>
              <td className="py-2">{yen(r.avg_cost_usd)}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}

async function Cases() {
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("formula_readings")
    .select("id, photo_name, saved_formula_id, saved_at, eval_excluded, eval_note, final_lines")
    .eq("status", "saved")
    .order("saved_at", { ascending: false });
  if (error) return <p className="text-sm text-red-600">読み込めませんでした:{error.message}</p>;
  const rows = data ?? [];
  const usable = rows.filter((r) => !r.eval_excluded);

  const models = Object.entries(EVAL_MODELS).map(([id, m]) => ({
    id,
    label: `${m.label}${id === readerModel() ? "(今ふだん使っているモデル)" : ""}`,
    estYen: ((EST_TOKENS.input * m.inUsd + EST_TOKENS.output * m.outUsd) / 1_000_000) * YEN_PER_USD,
  }));

  return (
    <>
      <section className="flex flex-col gap-3">
        <h2 className="font-bold">採点する</h2>
        <p className="text-xs text-gray-500">
          指示文の版 {PROMPT_VERSION}・思考の深さ {readerEffort()} で、正解に使う写真を全部読み直します。
        </p>
        {usable.length === 0 ? (
          <p className="text-sm text-gray-500">正解に使える写真がまだありません。写真から処方を保存すると、ここに並びます。</p>
        ) : (
          <EvalRunner
            caseIds={usable.map((r) => r.id)}
            models={models}
            start={startEvalBatch}
            runCase={runEvalCase}
            finish={finishEvalBatch}
          />
        )}
      </section>

      <section className="flex flex-col gap-2">
        <h2 className="font-bold">正解に使う写真({usable.length} / {rows.length}枚)</h2>
        <p className="text-xs text-gray-500">
          確認画面で直して保存した処方を、正解として使います。保存のときに処方を調整した(ノートと違う数字にした)ものは、外してください。AI が正しく読んでも「間違い」と数えてしまうためです。
        </p>
        <ul className="flex flex-col divide-y divide-gray-200 dark:divide-gray-700">
          {rows.map((r) => (
            <li key={r.id} className="flex flex-col gap-1 py-2 text-sm">
              <span>
                <Link href={`/formulas/readings/${r.id}`} className="underline">
                  {r.saved_formula_id ?? "処方"}
                </Link>
                <span className="ml-2 text-xs text-gray-500">
                  {r.photo_name ?? ""}・{(r.final_lines ?? []).length}行{r.saved_at ? `・${fmtDateTimeJst(r.saved_at)} 保存` : ""}
                </span>
                {r.eval_excluded && <span className="ml-2 text-xs text-amber-700">正解から外している{r.eval_note ? `(${r.eval_note})` : ""}</span>}
              </span>
              <form action={setEvalExcluded} className="flex flex-wrap items-center gap-2">
                <input type="hidden" name="reading_id" value={r.id} />
                <input type="hidden" name="excluded" value={r.eval_excluded ? "0" : "1"} />
                {!r.eval_excluded && (
                  <input name="eval_note" placeholder="外す理由(任意)" className={`${inputClass} max-w-56 py-1 text-sm`} />
                )}
                <SubmitButton className="text-xs underline" pendingText="保存中…">
                  {r.eval_excluded ? "正解に戻す" : "正解から外す"}
                </SubmitButton>
              </form>
            </li>
          ))}
        </ul>
      </section>
    </>
  );
}

export default function EvalsPage({ searchParams }: PageProps<"/evals">) {
  return (
    <main className="mx-auto flex w-full max-w-xl flex-1 flex-col gap-5 px-4 py-6">
      <h1 className="text-xl font-bold">読み取りの精度(Evals)</h1>
      <Suspense fallback={null}>
        <EvalsNotice searchParams={searchParams} />
      </Suspense>
      <p className="text-sm text-gray-600 dark:text-gray-300">
        保存済みのノートの写真を、選んだモデルでもう一度読ませ、保存した処方(正解)と配合行ごとに見比べます。採点は AI ではなく、決まった計算で行います。
        指示文やモデルを変えたら、ここで採点して、精度が下がっていないかを確かめます。
      </p>
      <section className="flex flex-col gap-2">
        <h2 className="font-bold">結果</h2>
        <p className="text-xs text-gray-500">
          数字の一致率=正解の行のうち、数字まで合っていた行の割合。グループ=正解にグループがある行のうち、合っていた割合。費用は料金表から計算した目安(1ドル{YEN_PER_USD}円)。
        </p>
        <Suspense fallback={<p className="text-sm text-gray-500">読み込み中…</p>}>
          <Results />
        </Suspense>
      </section>
      <Suspense fallback={<p className="text-sm text-gray-500">読み込み中…</p>}>
        <Cases />
      </Suspense>
    </main>
  );
}

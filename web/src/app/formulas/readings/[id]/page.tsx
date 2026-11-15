import { Suspense } from "react";
import Link from "next/link";
import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { fmtDateTimeJst, todayJst } from "@/lib/formulas";
import {
  READING_STATUS_LABELS,
  checkSubtotals,
  draftToFormInput,
  type Draft,
  type ReadingStatus,
} from "@/lib/readings";
import { FormulaForm } from "@/components/FormulaForm";
import { SubmitButton } from "@/components/SubmitButton";
import { Badge, Notice, subButtonClass } from "@/components/ui";
import { discardReading, retryReading, saveReading } from "../actions";

const UUID_RE = /^[0-9a-f-]{36}$/;
const first = (v: string | string[] | undefined) => (Array.isArray(v) ? v[0] : v);

async function ReadingDetail({ params, searchParams }: PageProps<"/formulas/readings/[id]">) {
  const { id } = await params;
  const sp = await searchParams;
  if (!UUID_RE.test(id)) notFound();

  const supabase = await createClient();
  const { data: r } = await supabase.from("formula_readings").select("*").eq("id", id).maybeSingle();
  if (!r) notFound();
  const status = r.status as ReadingStatus;
  const draft = r.draft as Draft | null;

  // 写真は非公開。見るための URL を、期限つき(1時間)で毎回作る
  const { data: signed } = await supabase.storage.from("note-photos").createSignedUrl(r.photo_path, 60 * 60);

  const formulas = draft?.formulas ?? [];
  const pickRaw = Number(first(sp.pick) ?? 0);
  const pick = Number.isInteger(pickRaw) && pickRaw >= 0 && pickRaw < formulas.length ? pickRaw : 0;
  const target = formulas[pick];

  const { data: oils } = await supabase.from("essential_oils").select("id, name").order("name");

  // ノートに不変 ID が書かれていて、その処方がもう登録されているか
  let existingId: string | null = null;
  const writtenId = target?.formula_id?.normalize("NFKC").toUpperCase().replace(/\s/g, "") ?? null;
  if (writtenId && /^P[0-9]{5}$/.test(writtenId)) {
    const { data: ex } = await supabase.from("formulas").select("id").eq("id", writtenId).maybeSingle();
    existingId = ex?.id ?? null;
  }

  const hidden = { reading_id: id, picked_index: String(pick) };

  return (
    <>
      <h1 className="flex flex-wrap items-center gap-2 text-xl font-bold">
        写真の読み取り
        <Badge tone={status === "saved" ? "ok" : status === "failed" ? "danger" : status === "read" ? "warn" : "muted"}>
          {READING_STATUS_LABELS[status]}
        </Badge>
      </h1>
      <Notice searchParams={sp} />
      <p className="text-xs text-gray-500">
        {fmtDateTimeJst(r.created_at)} に上げた{r.photo_name ? `・${r.photo_name}` : ""}
        {r.model ? `・${r.model}` : ""}
        {r.duration_ms ? `・読み取り ${Math.round(r.duration_ms / 1000)}秒` : ""}
      </p>

      {signed?.signedUrl && (
        <details open className="rounded border border-gray-200 dark:border-gray-700">
          <summary className="cursor-pointer px-3 py-2 text-sm">ノートの写真(見比べながら確認する)</summary>
          {/* eslint-disable-next-line @next/next/no-img-element -- 期限つきの URL なので、画像の最適化は使わない */}
          <img src={signed.signedUrl} alt="ノートの写真" className="w-full" />
        </details>
      )}

      {status === "saved" && r.saved_formula_id && (
        <p className="rounded bg-green-50 px-3 py-2 text-sm text-green-800 dark:bg-green-950 dark:text-green-200">
          この読み取りは、処方{" "}
          <Link href={`/formulas/${r.saved_formula_id}`} className="underline">
            {r.saved_formula_id}
          </Link>{" "}
          として保存しました。
        </p>
      )}

      {(status === "failed" || status === "reading") && (
        <div className="flex flex-col gap-2 rounded bg-red-50 px-3 py-2 text-sm text-red-800 dark:bg-red-950 dark:text-red-200">
          <p>
            {status === "failed"
              ? `読み取れませんでした:${r.error ?? "理由は不明"}`
              : "読み取りが終わっていません(途中で止まった可能性があります)。"}
          </p>
          <form action={retryReading}>
            <input type="hidden" name="reading_id" value={id} />
            <SubmitButton className={subButtonClass} pendingText="読み取っています…">
              同じ写真で読み直す
            </SubmitButton>
          </form>
        </div>
      )}

      {status === "read" && draft && (
        <>
          {draft.page_notes && <p className="text-sm">AI のメモ:{draft.page_notes}</p>}
          {formulas.length === 0 && <p className="text-sm text-red-600">この写真から、処方が見つかりませんでした。</p>}
          {formulas.length > 1 && (
            <div className="flex flex-col gap-1 text-sm">
              <p>この写真には、処方が {formulas.length} つありました。保存するものを選んでください(1回の読み取りで保存できるのは1つ)。</p>
              <div className="flex flex-wrap gap-2">
                {formulas.map((f, i) => (
                  <Link
                    key={i}
                    href={`/formulas/readings/${id}?pick=${i}`}
                    className={`rounded border px-3 py-1 ${i === pick ? "border-gray-900 bg-gray-900 text-white dark:border-gray-100 dark:bg-gray-100 dark:text-gray-900" : "border-gray-400"}`}
                  >
                    {f.label ?? f.formula_id ?? `処方${i + 1}`}
                  </Link>
                ))}
              </div>
            </div>
          )}

          {target && (
            <ConfirmForm
              key={pick}
              target={target}
              oils={oils ?? []}
              hidden={hidden}
              existingId={existingId}
              writtenId={writtenId}
            />
          )}
        </>
      )}

      {status !== "saved" && status !== "discarded" && (
        <form action={discardReading} className="border-t border-gray-200 pt-4 dark:border-gray-700">
          <input type="hidden" name="reading_id" value={id} />
          <SubmitButton className="text-sm underline" pendingText="記録中…">
            この読み取りは使わない
          </SubmitButton>
          <p className="text-xs text-gray-500">写真と読み取りの記録は残ります(AI の精度を確かめる材料にします)。</p>
        </form>
      )}
    </>
  );
}

function ConfirmForm({
  target,
  oils,
  hidden,
  existingId,
  writtenId,
}: {
  target: Draft["formulas"][number];
  oils: { id: string; name: string }[];
  hidden: Record<string, string>;
  existingId: string | null;
  writtenId: string | null;
}) {
  const { lines, hints } = draftToFormInput(target, oils);
  const checks = checkSubtotals(target);
  const nFlagged = hints.filter((h) => h.flags.length > 0).length;

  return (
    <div className="flex flex-col gap-3">
      <h2 className="font-bold">
        {target.label ?? "処方"}
        {writtenId && <span className="ml-2 text-sm font-normal">ノートの ID:{writtenId}</span>}
      </h2>
      {existingId && (
        <p className="rounded bg-amber-50 px-3 py-2 text-sm text-amber-900 dark:bg-amber-950 dark:text-amber-100">
          処方{" "}
          <Link href={`/formulas/${existingId}`} className="underline">
            {existingId}
          </Link>{" "}
          はもう登録されています。同じ処方なら、ここで保存せず「この読み取りは使わない」にしてください(ここで保存すると、新しい ID の処方になります)。
        </p>
      )}

      {checks.length > 0 && (
        <div className="rounded border border-gray-200 px-3 py-2 text-sm dark:border-gray-700">
          <p className="font-medium">ノートの小計・合計との見比べ(読み取った数字を計算で足したもの)</p>
          <ul className="mt-1 flex flex-col gap-0.5">
            {checks.map((c) => (
              <li key={c.label} className={c.ok === false ? "text-red-700 dark:text-red-300" : ""}>
                {c.ok === true ? "✓" : c.ok === false ? "✗" : "?"} {c.label}:ノート {c.written}/読み取りの合計 {c.computed}
                {c.ok === false && "(合いません。数字の読み間違い・行の抜けがないか見てください)"}
                {c.ok === null && "(ノートの値を数字として読めませんでした)"}
              </li>
            ))}
          </ul>
        </div>
      )}
      {target.notes && <p className="text-sm">AI のメモ:{target.notes}</p>}
      <p className="text-sm">
        {nFlagged > 0 ? (
          <Badge tone="warn">確認してほしい行 {nFlagged}</Badge>
        ) : (
          <Badge tone="muted">印のついた行なし(それでも全部の行を写真と見比べてください)</Badge>
        )}
      </p>
      <p className="text-xs text-gray-500">
        グループ(トップ/ミドル/ベース)は、ノートのかっこの上からの順で仮に入れています。違うときは直してください。
      </p>

      <FormulaForm
        oils={oils}
        action={saveReading}
        submitLabel="確認したので保存する"
        hidden={hidden}
        hints={hints}
        defaults={{ fragrance_pct: "", completed_on: todayJst(), memo: target.label ?? "", lines }}
      />
    </div>
  );
}

export default function ReadingPage(props: PageProps<"/formulas/readings/[id]">) {
  return (
    <main className="mx-auto flex w-full max-w-xl flex-1 flex-col gap-4 px-4 py-6">
      <Link href="/formulas/readings" className="text-sm underline">
        ← 読み取った写真の一覧
      </Link>
      <Suspense fallback={<p className="text-sm text-gray-500">読み込み中…</p>}>
        <ReadingDetail {...props} />
      </Suspense>
    </main>
  );
}

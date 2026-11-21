"use server";

import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { fail } from "@/lib/formula-input";
import { EVAL_MODELS, PROMPT_VERSION, costUsd, readNotePhoto, readerEffort } from "@/lib/reader";
import { scoreReading } from "@/lib/evals";
import type { FinalLine, OilAlias } from "@/lib/readings";

const UUID_RE = /^[0-9a-f-]{36}$/;
const TYPES = ["image/jpeg", "image/png", "image/webp"] as const;
type ImageType = (typeof TYPES)[number];

// 採点を始める:選んだモデルごとに「採点1回」を作る(写真は、このあと1枚ずつ送る)
// Netlify の待ち時間の上限があるので、1回の呼び出しでは写真1枚 × モデル1つだけを読む
export async function startEvalBatch(models: string[], readingIds: string[]) {
  const ms = [...new Set(models)].filter((m) => m in EVAL_MODELS);
  const ids = [...new Set(readingIds)].filter((id) => UUID_RE.test(id));
  if (ms.length === 0) return { ok: false as const, error: "モデルを1つ以上選んでください" };
  if (ids.length === 0) return { ok: false as const, error: "採点する写真がありません" };

  const supabase = await createClient();
  const { data: cases, error: caseError } = await supabase
    .from("formula_readings")
    .select("id")
    .in("id", ids)
    .eq("status", "saved")
    .eq("eval_excluded", false);
  if (caseError) return { ok: false as const, error: `正解データを読めませんでした:${caseError.message}` };
  const caseIds = (cases ?? []).map((c) => c.id as string);
  if (caseIds.length === 0) return { ok: false as const, error: "正解に使える写真がありません" };

  const batchId = crypto.randomUUID();
  const effort = readerEffort();
  const { data: runs, error } = await supabase
    .from("eval_runs")
    .insert(ms.map((model) => ({ batch_id: batchId, model, prompt_version: PROMPT_VERSION, effort, n_cases: caseIds.length })))
    .select("id, model");
  if (error || !runs) return { ok: false as const, error: `採点を始められませんでした:${error?.message ?? ""}` };

  return { ok: true as const, batchId, runs: runs as { id: string; model: string }[], caseIds };
}

// 写真1枚 × モデル1つを読み直して、採点を残す
export async function runEvalCase(runId: string, readingId: string) {
  if (!UUID_RE.test(runId) || !UUID_RE.test(readingId)) return { ok: false as const, error: "番号が正しくありません" };
  const supabase = await createClient();

  const { data: done } = await supabase.from("eval_results").select("id").eq("run_id", runId).eq("reading_id", readingId).maybeSingle();
  if (done) return { ok: true as const, skipped: true };

  const [{ data: run }, { data: reading }, { data: oils }, { data: aliases }] = await Promise.all([
    supabase.from("eval_runs").select("model, effort").eq("id", runId).maybeSingle(),
    supabase.from("formula_readings").select("photo_path, final_lines").eq("id", readingId).maybeSingle(),
    supabase.from("essential_oils").select("id, name"),
    supabase.from("oil_aliases").select("alias_key, alias, oil_id, ask_every_time"),
  ]);
  if (!run || !reading) return { ok: false as const, error: "採点か写真の記録が見つかりません" };

  const { data: blob, error: dlError } = await supabase.storage.from("note-photos").download(reading.photo_path);
  if (dlError || !blob) return { ok: false as const, error: `写真を取り出せませんでした:${dlError?.message ?? ""}` };
  const mediaType = (TYPES as readonly string[]).includes(blob.type) ? (blob.type as ImageType) : "image/jpeg";

  const result = await readNotePhoto(
    { base64: Buffer.from(await blob.arrayBuffer()).toString("base64"), mediaType },
    { model: run.model, effort: run.effort as "low" | "medium" | "high" },
  );

  const row = result.ok
    ? (() => {
        const score = scoreReading((reading.final_lines ?? []) as FinalLine[], result.draft, oils ?? [], (aliases ?? []) as OilAlias[]);
        return {
          status: "ok",
          served_model: result.model,
          draft: result.draft,
          duration_ms: result.durationMs,
          input_tokens: result.inputTokens,
          output_tokens: result.outputTokens,
          cost_usd: costUsd(run.model, result.inputTokens, result.outputTokens),
          n_expected: score.n_expected,
          n_matched: score.n_matched,
          n_amount_ok: score.n_amount_ok,
          n_group_total: score.n_group_total,
          n_group_ok: score.n_group_ok,
          n_missing: score.n_missing,
          n_extra: score.n_extra,
          details: { picked_index: score.picked_index, ...score.details },
        };
      })()
    : { status: "failed", error: result.error, served_model: result.model, duration_ms: result.durationMs };

  const { error } = await supabase.from("eval_results").insert({ run_id: runId, reading_id: readingId, ...row });
  if (error && error.code !== "23505") return { ok: false as const, error: `採点を保存できませんでした:${error.message}` };
  return { ok: true as const, skipped: false };
}

export async function finishEvalBatch() {
  revalidatePath("/evals");
}

// 正解から外す/戻す(保存のときに処方を調整したもの など)
export async function setEvalExcluded(formData: FormData) {
  const id = String(formData.get("reading_id") ?? "");
  if (!UUID_RE.test(id)) fail("/evals", "番号が正しくありません");
  const excluded = String(formData.get("excluded")) === "1";
  const note = String(formData.get("eval_note") ?? "").trim().slice(0, 200) || null;

  const supabase = await createClient();
  const { error } = await supabase
    .from("formula_readings")
    .update({ eval_excluded: excluded, eval_note: excluded ? note : null })
    .eq("id", id);
  if (error) fail("/evals", `保存できませんでした:${error.message}`);
  revalidatePath("/evals");
  redirect("/evals?saved=1");
}

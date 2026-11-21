"use server";

import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { fail, formulaFields } from "@/lib/formula-input";
import { PROMPT_VERSION, readerModel, readNotePhoto } from "@/lib/reader";
import { normalizeName, type FinalLine, type MatchedBy } from "@/lib/readings";

const BUCKET = "note-photos";
const UUID_RE = /^[0-9a-f-]{36}$/;
const MAX_BYTES = 8 * 1024 * 1024;
const TYPES = ["image/jpeg", "image/png", "image/webp"] as const;
type ImageType = (typeof TYPES)[number];

function readingId(formData: FormData, backTo = "/formulas/readings"): string {
  const id = String(formData.get("reading_id") ?? "");
  if (!UUID_RE.test(id)) fail(backTo, "読み取りの番号が正しくありません");
  return id;
}

type Supabase = Awaited<ReturnType<typeof createClient>>;

// 写真を Claude API に送り、結果を読み取りの記録に書く(初回・読み直しで共通)
async function runReading(supabase: Supabase, id: string, image: { base64: string; mediaType: ImageType }) {
  const result = await readNotePhoto(image);
  const common = { model: result.model, prompt_version: PROMPT_VERSION, duration_ms: result.durationMs };
  const { error } = await supabase
    .from("formula_readings")
    .update(
      result.ok
        ? {
            ...common,
            status: "read",
            draft: result.draft,
            error: null,
            input_tokens: result.inputTokens,
            output_tokens: result.outputTokens,
            read_at: new Date().toISOString(),
          }
        : { ...common, status: "failed", error: result.error },
    )
    .eq("id", id);
  return error;
}

// 写真を上げて読み取る(R1)。写真は非公開の置き場所に残す(2026-11-15 決定)
export async function uploadAndRead(formData: FormData) {
  const file = formData.get("photo");
  if (!(file instanceof File) || file.size === 0) fail("/formulas/readings", "写真を選んでください");
  if (file.size > MAX_BYTES) fail("/formulas/readings", "写真が大きすぎます(8MB まで)");
  const mediaType = (TYPES as readonly string[]).includes(file.type) ? (file.type as ImageType) : null;
  if (!mediaType) fail("/formulas/readings", "JPEG・PNG・WebP の写真を選んでください(HEIC は画面で JPEG に変えてから送ります)");

  const id = crypto.randomUUID();
  const now = new Date(Date.now() + 9 * 60 * 60 * 1000); // 日本時間で、年/月のフォルダに分ける
  const ext = mediaType === "image/png" ? "png" : mediaType === "image/webp" ? "webp" : "jpg";
  const path = `${now.toISOString().slice(0, 4)}/${now.toISOString().slice(5, 7)}/${id}.${ext}`;
  const bytes = Buffer.from(await file.arrayBuffer());

  const supabase = await createClient();
  const { error: upError } = await supabase.storage.from(BUCKET).upload(path, bytes, { contentType: mediaType });
  if (upError) fail("/formulas/readings", `写真を保存できませんでした:${upError.message}`);

  const { error: insError } = await supabase.from("formula_readings").insert({
    id,
    photo_path: path,
    photo_name: String(formData.get("photo_name") ?? "").slice(0, 200) || file.name.slice(0, 200),
    status: "reading",
    model: readerModel(),
    prompt_version: PROMPT_VERSION,
  });
  if (insError) fail("/formulas/readings", `読み取りの記録を作れませんでした:${insError.message}`);

  const runError = await runReading(supabase, id, { base64: bytes.toString("base64"), mediaType });
  if (runError) fail(`/formulas/readings/${id}`, `読み取りの結果を保存できませんでした:${runError.message}`);

  revalidatePath("/formulas/readings");
  redirect(`/formulas/readings/${id}`);
}

// 同じ写真で読み直す(読み取れなかった・途中で止まったとき)
export async function retryReading(formData: FormData) {
  const id = readingId(formData);
  const back = `/formulas/readings/${id}`;
  const supabase = await createClient();
  const { data: reading } = await supabase.from("formula_readings").select("photo_path, status").eq("id", id).maybeSingle();
  if (!reading) fail("/formulas/readings", "読み取りの記録が見つかりません");
  if (reading.status === "saved") fail(back, "保存済みの読み取りは、読み直せません");

  const { data: blob, error: dlError } = await supabase.storage.from(BUCKET).download(reading.photo_path);
  if (dlError || !blob) fail(back, `写真を取り出せませんでした:${dlError?.message ?? ""}`);
  const mediaType = (TYPES as readonly string[]).includes(blob.type) ? (blob.type as ImageType) : "image/jpeg";

  await supabase.from("formula_readings").update({ status: "reading", error: null, model: readerModel() }).eq("id", id);
  const runError = await runReading(supabase, id, { base64: Buffer.from(await blob.arrayBuffer()).toString("base64"), mediaType });
  if (runError) fail(back, `読み取りの結果を保存できませんでした:${runError.message}`);

  revalidatePath("/formulas/readings");
  redirect(back);
}

// この読み取りは使わない(写真と記録は残す。Evals の材料にもなるため)
export async function discardReading(formData: FormData) {
  const id = readingId(formData);
  const supabase = await createClient();
  const { error } = await supabase.from("formula_readings").update({ status: "discarded" }).eq("id", id).neq("status", "saved");
  if (error) fail(`/formulas/readings/${id}`, `記録できませんでした:${error.message}`);
  revalidatePath("/formulas/readings");
  redirect("/formulas/readings");
}

// 確認・修正した下書きを、処方として保存する(R2)
// 二重登録を防ぐ:読み取りの番号を「この1回の登録の番号」に使う(同じ読み取りから2回は保存されない)
export async function saveReading(formData: FormData) {
  const id = readingId(formData);
  const picked = Number(formData.get("picked_index") ?? 0);
  const back = `/formulas/readings/${id}`;
  const f = formulaFields(formData, `${back}?pick=${picked}`);
  const written = formData.getAll("written").map(String);
  const remember = formData.getAll("remember").map(String);
  const matchedBy = formData.getAll("matched_by").map(String);
  const initialOil = formData.getAll("initial_oil_id").map(String);

  const supabase = await createClient();
  const { data, error } = await supabase
    .rpc("save_formula", {
      p_id: null,
      p_submission_token: id,
      p_fragrance_pct: f.fragrance,
      p_completed_on: f.completedOn,
      p_memo: f.memo,
      p_lines: f.lines,
    })
    .single();
  if (error || !data) fail(back, `保存できませんでした:${error?.message ?? "結果が返りませんでした"}`);
  const saved = data as { saved_id: string; created: boolean };

  if (saved.created) {
    const finalLines: FinalLine[] = f.lines.map((l, i) => ({
      ...l,
      written: written[i] || null,
      matched_by: (["dictionary", "name"].includes(matchedBy[i]) ? matchedBy[i] : "") as MatchedBy,
      initial_oil_id: initialOil[i] || null,
      remembered: remember[i] === "1" && !!written[i],
    }));

    // 「この書き方を覚える」の行を、表記揺れ辞書に入れる(R6)
    const items = finalLines
      .filter((l) => l.remembered && l.written && normalizeName(l.written))
      .map((l) => ({ alias_key: normalizeName(l.written!), alias: l.written, oil_id: l.oil_id }));
    let aliasError: string | null = null;
    if (items.length > 0) {
      const { error: rememberError } = await supabase.rpc("remember_oil_aliases", { p_items: items });
      if (rememberError) aliasError = rememberError.message;
    }
    const { error: upError } = await supabase
      .from("formula_readings")
      .update({
        status: "saved",
        saved_formula_id: saved.saved_id,
        picked_index: Number.isInteger(picked) ? picked : 0,
        final_lines: finalLines,
        saved_at: new Date().toISOString(),
      })
      .eq("id", id);
    if (upError || aliasError) {
      revalidatePath("/formulas");
      fail(
        `/formulas/${saved.saved_id}`,
        upError
          ? `処方は保存しましたが、読み取りの記録を更新できませんでした:${upError.message}`
          : `処方は保存しましたが、書き方を辞書に覚えられませんでした:${aliasError}`,
      );
    }
  }

  revalidatePath("/formulas");
  revalidatePath("/formulas/readings");
  redirect(`/formulas/${saved.saved_id}?${saved.created ? "saved=1" : "already=1"}`);
}

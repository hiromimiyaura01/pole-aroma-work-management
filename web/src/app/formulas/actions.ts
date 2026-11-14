"use server";

import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { AMENDMENT } from "@/lib/oils";
import { DECISION_LABELS, GROUP_LABELS } from "@/lib/formulas";

const ID_RE = /^P[0-9]{5}$/;
const UUID_RE = /^[0-9a-f-]{36}$/;
const DATE_RE = /^\d{4}-\d{2}-\d{2}$/;

function text(formData: FormData, key: string): string | null {
  const v = String(formData.get(key) ?? "").trim();
  return v === "" ? null : v;
}

function fail(path: string, message: string): never {
  redirect(`${path}?error=${encodeURIComponent(message)}`);
}

function formulaId(formData: FormData): string {
  const id = String(formData.get("id") ?? "");
  if (!ID_RE.test(id)) fail("/formulas", "処方の ID が正しくありません");
  return id;
}

// 画面から送られた処方の中身を、保存できる形に整える(おかしければ、戻して知らせる)
function formulaFields(formData: FormData, backTo: string) {
  const fragrance = Number(formData.get("fragrance_pct"));
  if (!(fragrance > 0 && fragrance <= 100)) fail(backTo, "賦香率は 0 より大きく 100 以下の数字で入れてください");

  const completedOn = text(formData, "completed_on");
  if (completedOn && !DATE_RE.test(completedOn)) fail(backTo, "日付の形が正しくありません");

  const oilIds = formData.getAll("oil_id").map(String);
  const amounts = formData.getAll("amount").map(String);
  const dilutions = formData.getAll("dilution_pct").map(String);
  const groups = formData.getAll("note_group").map(String);
  if (oilIds.length === 0) fail(backTo, "配合を1行以上入れてください");
  if (amounts.length !== oilIds.length || dilutions.length !== oilIds.length || groups.length !== oilIds.length) {
    fail(backTo, "配合の行がそろっていません。画面を開き直してください");
  }

  const lines = oilIds.map((oilId, i) => {
    const amount = Number(amounts[i]);
    const dilution = Number(dilutions[i]);
    if (!UUID_RE.test(oilId)) fail(backTo, `${i + 1}行目:精油を選んでください`);
    if (!(amount > 0)) fail(backTo, `${i + 1}行目:数字は 0 より大きい値で入れてください`);
    if (!(dilution > 0 && dilution <= 100)) fail(backTo, `${i + 1}行目:希釈率は 0 より大きく 100 以下で入れてください`);
    return {
      oil_id: oilId,
      amount,
      dilution_pct: dilution,
      note_group: groups[i] in GROUP_LABELS ? groups[i] : "",
    };
  });

  return { fragrance, completedOn, memo: text(formData, "memo"), lines };
}

// 処方を新しく登録する(不変 ID は、データベースが次の番号を振る)
// 二重登録を防ぐ:同じ「この1回の登録の番号」の2回目は保存せず、1回目の処方の画面に移して知らせる
export async function createFormula(formData: FormData) {
  const token = String(formData.get("submission_token") ?? "");
  if (!UUID_RE.test(token)) fail("/formulas/new", "画面を開き直してから登録してください");
  const f = formulaFields(formData, "/formulas/new");

  const supabase = await createClient();
  const { data, error } = await supabase
    .rpc("save_formula", {
      p_id: null,
      p_submission_token: token,
      p_fragrance_pct: f.fragrance,
      p_completed_on: f.completedOn,
      p_memo: f.memo,
      p_lines: f.lines,
    })
    .single();
  if (error || !data) fail("/formulas/new", `登録できませんでした:${error?.message ?? "結果が返りませんでした"}`);

  const saved = data as { saved_id: string; created: boolean };
  revalidatePath("/formulas");
  redirect(`/formulas/${saved.saved_id}?${saved.created ? "saved=1" : "already=1"}`);
}

// 処方の中身を直す(書き間違いを直すため。処方そのものを変えたときは、新しい処方として登録する)
export async function updateFormula(formData: FormData) {
  const id = formulaId(formData);
  const f = formulaFields(formData, `/formulas/${id}`);

  const supabase = await createClient();
  const { error } = await supabase.rpc("save_formula", {
    p_id: id,
    p_submission_token: null,
    p_fragrance_pct: f.fragrance,
    p_completed_on: f.completedOn,
    p_memo: f.memo,
    p_lines: f.lines,
  });
  if (error) fail(`/formulas/${id}`, `保存できませんでした:${error.message}`);

  revalidatePath("/formulas");
  redirect(`/formulas/${id}?saved=1`);
}

// 処方を消す(配合・販売名・判断・確認の記録も一緒に消える)
export async function deleteFormula(formData: FormData) {
  const id = formulaId(formData);
  const supabase = await createClient();
  const { error } = await supabase.from("formulas").delete().eq("id", id);
  if (error) fail(`/formulas/${id}`, `消せませんでした:${error.message}`);

  revalidatePath("/formulas");
  redirect("/formulas");
}

// 販売名をつける
export async function addSaleName(formData: FormData) {
  const id = formulaId(formData);
  const name = text(formData, "sale_name");
  const from = text(formData, "sold_from");
  if (!name) fail(`/formulas/${id}`, "販売名を入れてください");
  if (!from || !DATE_RE.test(from)) fail(`/formulas/${id}`, "販売開始日を入れてください");

  const supabase = await createClient();
  const { error } = await supabase.from("formula_sale_names").insert({ formula_id: id, sale_name: name, sold_from: from });
  if (error) fail(`/formulas/${id}`, `保存できませんでした:${error.message}`);

  revalidatePath("/formulas");
  redirect(`/formulas/${id}?saved=1`);
}

// 販売終了日を入れる(空にすると「販売中」に戻る)
export async function setSaleEnd(formData: FormData) {
  const id = formulaId(formData);
  const saleId = Number(formData.get("sale_id"));
  const until = text(formData, "sold_until");
  if (until && !DATE_RE.test(until)) fail(`/formulas/${id}`, "日付の形が正しくありません");

  const supabase = await createClient();
  const { error } = await supabase
    .from("formula_sale_names")
    .update({ sold_until: until })
    .eq("id", saleId)
    .eq("formula_id", id);
  if (error) {
    const message = error.code === "23514" ? "販売終了日は、販売開始日より後にしてください" : error.message;
    fail(`/formulas/${id}`, `保存できませんでした:${message}`);
  }

  revalidatePath("/formulas");
  redirect(`/formulas/${id}?saved=1`);
}

// 販売名を消す(間違えてつけたとき)
export async function removeSaleName(formData: FormData) {
  const id = formulaId(formData);
  const saleId = Number(formData.get("sale_id"));
  const supabase = await createClient();
  const { error } = await supabase.from("formula_sale_names").delete().eq("id", saleId).eq("formula_id", id);
  if (error) fail(`/formulas/${id}`, `消せませんでした:${error.message}`);

  revalidatePath("/formulas");
  redirect(`/formulas/${id}?saved=1`);
}

// 判断を記録する(R12)。判断したときの段階と数字は、画面からではなく、今の計算結果から取る
export async function recordJudgment(formData: FormData) {
  const id = formulaId(formData);
  const itemType = String(formData.get("item_type"));
  const itemKey = String(formData.get("item_key"));
  const decision = String(formData.get("decision") ?? "");
  const reason = text(formData, "reason");

  if (!(decision in DECISION_LABELS)) fail(`/formulas/${id}`, "判断を選んでください");
  if (decision === "accept" && !reason) fail(`/formulas/${id}`, "「意図して超える」ときは、理由を書いてください");

  const supabase = await createClient();
  const { data: item } = await supabase
    .from("formula_check_items")
    .select("item_name, level, ratio, total_pct, limit_pct")
    .eq("formula_id", id)
    .eq("amendment", AMENDMENT)
    .eq("item_type", itemType)
    .eq("item_key", itemKey)
    .maybeSingle();
  if (!item) fail(`/formulas/${id}`, "この項目は、今の確認の結果にありません。画面を開き直してください");

  const { error } = await supabase.from("formula_judgments").insert({
    formula_id: id,
    amendment: AMENDMENT,
    item_type: itemType,
    item_key: itemKey,
    item_name: item.item_name,
    decision,
    reason,
    level_at_decision: item.level,
    ratio_at_decision: item.ratio,
    total_pct_at_decision: item.total_pct,
    limit_pct_at_decision: item.limit_pct,
  });
  if (error) fail(`/formulas/${id}`, `記録できませんでした:${error.message}`);

  revalidatePath("/formulas");
  redirect(`/formulas/${id}?saved=1`);
}

// 「この結果を見た」と記録する(確認の記録)
export async function recordCheck(formData: FormData) {
  const id = formulaId(formData);
  const supabase = await createClient();
  const { error } = await supabase.rpc("record_formula_check", { p_formula_id: id, p_amendment: AMENDMENT });
  if (error) fail(`/formulas/${id}`, `記録できませんでした:${error.message}`);

  revalidatePath("/formulas");
  redirect(`/formulas/${id}?saved=1`);
}

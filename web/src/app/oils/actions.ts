"use server";

import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { AMENDMENT, EXTRACTION_METHODS, KIND_LABELS, PLANT_PARTS } from "@/lib/oils";

function text(formData: FormData, key: string): string | null {
  const v = String(formData.get(key) ?? "").trim();
  return v === "" ? null : v;
}

function oilFields(formData: FormData) {
  const kind = String(formData.get("kind") ?? "essential_oil");
  const parts = formData.getAll("plant_part").map(String).filter((p) => PLANT_PARTS.includes(p));
  const method = text(formData, "extraction_method");
  return {
    name: text(formData, "name") ?? "",
    botanical_name: text(formData, "botanical_name"),
    kind: kind in KIND_LABELS ? kind : "other",
    plant_part: parts.length > 0 ? parts : null,
    extraction_method: method && EXTRACTION_METHODS.includes(method) ? method : null,
    brand: text(formData, "brand"),
    memo: text(formData, "memo"),
  };
}

function fail(path: string, message: string): never {
  redirect(`${path}?error=${encodeURIComponent(message)}`);
}

// 精油を新しく登録する
export async function createOil(formData: FormData) {
  const fields = oilFields(formData);
  if (!fields.name) fail("/oils/new", "名前を入れてください");

  const supabase = await createClient();
  const { data, error } = await supabase
    .from("essential_oils")
    .insert(fields)
    .select("id")
    .single();
  if (error || !data) fail("/oils/new", `登録できませんでした:${error?.message ?? ""}`);

  revalidatePath("/oils");
  redirect(`/oils/${data.id}?saved=1`);
}

// 精油の基本情報を直す
export async function updateOil(formData: FormData) {
  const id = String(formData.get("id"));
  const fields = oilFields(formData);
  if (!fields.name) fail(`/oils/${id}`, "名前を入れてください");

  const supabase = await createClient();
  const { error } = await supabase.from("essential_oils").update(fields).eq("id", id);
  if (error) fail(`/oils/${id}`, `保存できませんでした:${error.message}`);

  revalidatePath("/oils");
  redirect(`/oils/${id}?saved=1`);
}

// 精油を消す(結びつきも一緒に消える)
export async function deleteOil(formData: FormData) {
  const id = String(formData.get("id"));
  const supabase = await createClient();
  const { error } = await supabase.from("essential_oils").delete().eq("id", id);
  if (error) fail(`/oils/${id}`, `消せませんでした:${error.message}`);

  revalidatePath("/oils");
  redirect("/oils");
}

// Annex の精油と結びつける(一致・近似)、または「Annex になし」にする
export async function setAnnexLink(formData: FormData) {
  const id = String(formData.get("id"));
  const matchType = String(formData.get("match_type"));
  const reason = text(formData, "reason");

  if (!["exact", "approx", "none"].includes(matchType)) fail(`/oils/${id}`, "選び方が正しくありません");
  if (matchType !== "exact" && !reason) {
    fail(`/oils/${id}`, "近似・Annex になし のときは、理由を書いてください");
  }

  const row = {
    oil_id: id,
    amendment: AMENDMENT,
    match_type: matchType,
    ncs_name: matchType === "none" ? null : text(formData, "ncs_name"),
    iso_category: matchType === "none" ? null : text(formData, "iso_category"),
    reason,
    checked_on: new Date().toISOString().slice(0, 10),
  };
  if (matchType !== "none" && !row.ncs_name) fail(`/oils/${id}`, "Annex の精油を選んでください");

  const supabase = await createClient();
  const { error } = await supabase.from("oil_annex_links").upsert(row);
  if (error) fail(`/oils/${id}`, `保存できませんでした:${error.message}`);

  revalidatePath("/oils");
  redirect(`/oils/${id}?saved=1`);
}

// Annex との結びつきを外す(未設定に戻す)
export async function clearAnnexLink(formData: FormData) {
  const id = String(formData.get("id"));
  const supabase = await createClient();
  const { error } = await supabase
    .from("oil_annex_links")
    .delete()
    .eq("oil_id", id)
    .eq("amendment", AMENDMENT);
  if (error) fail(`/oils/${id}`, `外せませんでした:${error.message}`);

  revalidatePath("/oils");
  redirect(`/oils/${id}?saved=1`);
}

// 原料そのものの基準と結びつける
export async function addStandardLink(formData: FormData) {
  const id = String(formData.get("id"));
  const standardKey = text(formData, "standard_key");
  if (!standardKey) fail(`/oils/${id}`, "基準を選んでください");

  const supabase = await createClient();
  const { error } = await supabase.from("oil_standard_links").upsert({
    oil_id: id,
    amendment: AMENDMENT,
    standard_key: standardKey,
    note: text(formData, "note"),
    checked_on: new Date().toISOString().slice(0, 10),
  });
  if (error) fail(`/oils/${id}`, `保存できませんでした:${error.message}`);

  revalidatePath("/oils");
  redirect(`/oils/${id}?saved=1`);
}

// 原料そのものの基準との結びつきを外す
export async function removeStandardLink(formData: FormData) {
  const id = String(formData.get("id"));
  const standardKey = String(formData.get("standard_key"));
  const supabase = await createClient();
  const { error } = await supabase
    .from("oil_standard_links")
    .delete()
    .eq("oil_id", id)
    .eq("amendment", AMENDMENT)
    .eq("standard_key", standardKey);
  if (error) fail(`/oils/${id}`, `外せませんでした:${error.message}`);

  revalidatePath("/oils");
  redirect(`/oils/${id}?saved=1`);
}

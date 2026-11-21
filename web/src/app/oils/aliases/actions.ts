"use server";

import { revalidatePath } from "next/cache";
import { createClient } from "@/lib/supabase/server";
import { fail } from "@/lib/formula-input";
import { redirect } from "next/navigation";

const BACK = "/oils/aliases";
const UUID_RE = /^[0-9a-f-]{36}$/;

function aliasKey(formData: FormData): string {
  const key = String(formData.get("alias_key") ?? "");
  if (!key) fail(BACK, "書き方が見つかりません。画面を開き直してください");
  return key;
}

// 書き方を直す:結びつける精油を変える/「毎回選ぶ」にする
export async function updateAlias(formData: FormData) {
  const key = aliasKey(formData);
  const choice = String(formData.get("oil_id") ?? "");
  const ask = choice === "ask";
  if (!ask && !UUID_RE.test(choice)) fail(BACK, "精油を選ぶか、「毎回選ぶ」にしてください");

  const supabase = await createClient();
  const { error } = await supabase
    .from("oil_aliases")
    .update(ask ? { ask_every_time: true, oil_id: null } : { ask_every_time: false, oil_id: choice })
    .eq("alias_key", key);
  if (error) fail(BACK, `保存できませんでした:${error.message}`);

  revalidatePath(BACK);
  redirect(`${BACK}?saved=1`);
}

// 書き方を消す(間違えて覚えたとき。消すと、次の読み取りでは「不明」に戻る)
export async function deleteAlias(formData: FormData) {
  const key = aliasKey(formData);
  const supabase = await createClient();
  const { error } = await supabase.from("oil_aliases").delete().eq("alias_key", key);
  if (error) fail(BACK, `消せませんでした:${error.message}`);

  revalidatePath(BACK);
  redirect(`${BACK}?saved=1`);
}

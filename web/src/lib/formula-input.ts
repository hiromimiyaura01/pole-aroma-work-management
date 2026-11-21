// 処方の入力欄から送られた中身を、保存できる形に整える(処方の登録・編集・写真の読み取りの保存で共通)
import { redirect } from "next/navigation";
import { GROUP_LABELS } from "./formulas";

const UUID_RE = /^[0-9a-f-]{36}$/;
const DATE_RE = /^\d{4}-\d{2}-\d{2}$/;

export function text(formData: FormData, key: string): string | null {
  const v = String(formData.get(key) ?? "").trim();
  return v === "" ? null : v;
}

export function fail(path: string, message: string): never {
  redirect(`${path}${path.includes("?") ? "&" : "?"}error=${encodeURIComponent(message)}`);
}

// 画面から送られた処方の中身を、保存できる形に整える(おかしければ、戻して知らせる)
export function formulaFields(formData: FormData, backTo: string) {
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

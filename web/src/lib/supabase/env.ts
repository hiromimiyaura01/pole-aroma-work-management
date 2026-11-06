// Supabase の接続先とキー。値はリポジトリに入れず、
// 手元では web/.env.local、公開版では Netlify の Environment variables に置く。
export function supabaseEnv() {
  // 貼り付けたときに紛れ込みやすい空白・引用符・末尾の / を取り除く
  const clean = (v: string | undefined) =>
    (v ?? "").trim().replace(/^["']|["']$/g, "").trim();
  const url = clean(process.env.SUPABASE_URL).replace(/\/+$/, "");
  const key = clean(process.env.SUPABASE_PUBLISHABLE_KEY);

  if (!url || !key) {
    throw new Error(
      "SUPABASE_URL と SUPABASE_PUBLISHABLE_KEY が設定されていません(web/.env.local または Netlify の Environment variables)",
    );
  }
  if (!/^https:\/\/[a-z0-9-]+\.supabase\.co$/.test(url)) {
    // 値そのものは表示しない(ログに残さないため)
    throw new Error(
      "SUPABASE_URL の形が違います。https://〜.supabase.co の形(末尾に /rest/v1 などを付けない)で入れてください",
    );
  }
  return { url, key };
}

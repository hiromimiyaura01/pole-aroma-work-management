// Supabase の接続先とキー。値はリポジトリに入れず、
// 手元では web/.env.local、公開版では Netlify の Environment variables に置く。
export function supabaseEnv() {
  const url = process.env.SUPABASE_URL;
  const key = process.env.SUPABASE_PUBLISHABLE_KEY;
  if (!url || !key) {
    throw new Error(
      "SUPABASE_URL と SUPABASE_PUBLISHABLE_KEY が設定されていません(web/.env.local または Netlify の Environment variables)",
    );
  }
  return { url, key };
}

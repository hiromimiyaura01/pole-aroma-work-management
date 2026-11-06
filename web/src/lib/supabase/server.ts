import { createServerClient } from "@supabase/ssr";
import { cookies } from "next/headers";
import { supabaseEnv } from "./env";

// 画面・サーバーの処理から使う Supabase の窓口。
// ログイン状態はブラウザの Cookie に保存される。
export async function createClient() {
  const cookieStore = await cookies();
  const { url, key } = supabaseEnv();

  return createServerClient(url, key, {
    cookies: {
      getAll() {
        return cookieStore.getAll();
      },
      setAll(cookiesToSet) {
        try {
          cookiesToSet.forEach(({ name, value, options }) =>
            cookieStore.set(name, value, options),
          );
        } catch {
          // 画面の表示中は Cookie を書けない。proxy.ts が更新するので問題ない。
        }
      },
    },
  });
}

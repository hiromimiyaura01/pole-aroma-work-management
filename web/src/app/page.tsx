import { Suspense } from "react";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { logout } from "./login/actions";

async function CurrentUser() {
  const supabase = await createClient();
  const { data } = await supabase.auth.getClaims();
  const email = data?.claims?.email as string | undefined;

  return (
    <div className="mt-6 flex items-center gap-4 text-sm">
      <span>ログイン中:{email}</span>
      <form action={logout}>
        <button type="submit" className="underline">
          ログアウト
        </button>
      </form>
    </div>
  );
}

export default function Home() {
  return (
    <main className="mx-auto flex w-full max-w-xl flex-1 flex-col gap-4 px-4 py-10">
      <h1 className="text-2xl font-bold">POLE AROMA 処方ノート</h1>
      <p>処方の記録と、IFRA の上限の確認を補助する道具です(準備中)。</p>
      <nav className="flex flex-col gap-2">
        <Link href="/oils" className="rounded border border-gray-300 px-4 py-3 hover:bg-gray-50 dark:border-gray-600 dark:hover:bg-gray-900">
          精油の一覧・登録 →
        </Link>
      </nav>
      <p className="text-sm text-gray-500">
        確認の結果は参考情報です。最終的な判断は、事業者が行います。
      </p>
      <Suspense fallback={null}>
        <CurrentUser />
      </Suspense>
    </main>
  );
}

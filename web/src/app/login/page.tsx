import { Suspense } from "react";
import { login } from "./actions";
import { SubmitButton } from "@/components/SubmitButton";

async function ErrorMessage({
  searchParams,
}: Pick<PageProps<"/login">, "searchParams">) {
  const { error } = await searchParams;
  if (!error) return null;
  return (
    <p className="text-sm text-red-600">
      メールアドレスかパスワードが違います。
    </p>
  );
}

export default function LoginPage({ searchParams }: PageProps<"/login">) {

  return (
    <main className="mx-auto flex w-full max-w-sm flex-1 flex-col justify-center gap-6 px-4 py-10">
      <h1 className="text-2xl font-bold">POLE AROMA 処方ノート</h1>
      <form action={login} className="flex flex-col gap-4">
        <label className="flex flex-col gap-1">
          <span className="text-sm">メールアドレス</span>
          <input
            name="email"
            type="email"
            autoComplete="username"
            required
            className="rounded border border-gray-300 px-3 py-2 text-base"
          />
        </label>
        <label className="flex flex-col gap-1">
          <span className="text-sm">パスワード</span>
          <input
            name="password"
            type="password"
            autoComplete="current-password"
            required
            className="rounded border border-gray-300 px-3 py-2 text-base"
          />
        </label>
        <Suspense fallback={null}>
          <ErrorMessage searchParams={searchParams} />
        </Suspense>
        <SubmitButton className="justify-center rounded bg-gray-900 px-4 py-2 text-white" pendingText="ログイン中…">
          ログイン
        </SubmitButton>
      </form>
    </main>
  );
}

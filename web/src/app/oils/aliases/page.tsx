import { Suspense } from "react";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { Notice, inputClass, subButtonClass } from "@/components/ui";
import { SubmitButton } from "@/components/SubmitButton";
import { deleteAlias, updateAlias } from "./actions";

async function AliasesNotice({ searchParams }: Pick<PageProps<"/oils/aliases">, "searchParams">) {
  return <Notice searchParams={await searchParams} />;
}

async function AliasList() {
  const supabase = await createClient();
  const [{ data, error }, { data: oils }] = await Promise.all([
    supabase.from("oil_aliases").select("alias_key, alias, oil_id, ask_every_time, times_used, updated_at").order("alias"),
    supabase.from("essential_oils").select("id, name").order("name"),
  ]);
  if (error) return <p className="text-sm text-red-600">読み込めませんでした:{error.message}</p>;
  const rows = data ?? [];
  if (rows.length === 0) {
    return <p className="text-sm text-gray-500">まだ覚えた書き方はありません。写真の確認画面で精油を選んで保存すると、ここに入ります。</p>;
  }

  return (
    <>
      <p className="text-sm text-gray-600 dark:text-gray-300">{rows.length}件</p>
      <ul className="flex flex-col divide-y divide-gray-200 dark:divide-gray-700">
        {rows.map((a) => (
          <li key={a.alias_key} className="flex flex-col gap-2 py-3">
            <span className="font-medium">
              {a.alias}
              <span className="ml-2 text-xs font-normal text-gray-500">保存で使った回数 {a.times_used}</span>
            </span>
            <form action={updateAlias} className="flex flex-wrap items-center gap-2">
              <input type="hidden" name="alias_key" value={a.alias_key} />
              <select
                name="oil_id"
                defaultValue={a.ask_every_time ? "ask" : (a.oil_id ?? "")}
                className={`${inputClass} max-w-64`}
                aria-label={`${a.alias} の精油`}
              >
                <option value="ask">(毎回選ぶ)</option>
                {(oils ?? []).map((o) => (
                  <option key={o.id} value={o.id}>
                    {o.name}
                  </option>
                ))}
              </select>
              <SubmitButton className={subButtonClass}>直す</SubmitButton>
            </form>
            <form action={deleteAlias}>
              <input type="hidden" name="alias_key" value={a.alias_key} />
              <SubmitButton className="text-xs underline" pendingText="消しています…">
                この書き方を消す
              </SubmitButton>
            </form>
          </li>
        ))}
      </ul>
    </>
  );
}

export default function AliasesPage({ searchParams }: PageProps<"/oils/aliases">) {
  return (
    <main className="mx-auto flex w-full max-w-xl flex-1 flex-col gap-4 px-4 py-6">
      <Link href="/oils" className="text-sm underline">
        ← 精油の一覧
      </Link>
      <h1 className="text-xl font-bold">ノートの書き方の辞書</h1>
      <Suspense fallback={null}>
        <AliasesNotice searchParams={searchParams} />
      </Suspense>
      <p className="text-sm text-gray-600 dark:text-gray-300">
        ノートでの書き方(例:Bergamot、O.S)と、登録した精油の結びつきです。写真の読み取りでは、ここにある書き方を自動で結びつけます。
        「マジョラム」のように、どの精油か毎回違いうる書き方は「毎回選ぶ」にしてください。間違えて覚えたものは、直すか消してください。
      </p>
      <Suspense fallback={<p className="text-sm text-gray-500">読み込み中…</p>}>
        <AliasList />
      </Suspense>
    </main>
  );
}

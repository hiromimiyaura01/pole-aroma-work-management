import { Suspense } from "react";
import Link from "next/link";
import { connection } from "next/server";
import { OilForm } from "@/components/OilForm";
import { Notice } from "@/components/ui";
import { createOil } from "../actions";

async function NewOilNotice({ searchParams }: Pick<PageProps<"/oils/new">, "searchParams">) {
  return <Notice searchParams={await searchParams} />;
}

// 画面を開くたびに「この1回の登録の番号」を新しく作る(リクエストのたびに作るため connection() を使う)
async function NewOilForm() {
  await connection();
  return <OilForm action={createOil} submitLabel="登録する" submissionToken={crypto.randomUUID()} />;
}

export default function NewOilPage({ searchParams }: PageProps<"/oils/new">) {
  return (
    <main className="mx-auto flex w-full max-w-xl flex-1 flex-col gap-4 px-4 py-6">
      <Link href="/oils" className="text-sm underline">
        ← 精油の一覧
      </Link>
      <h1 className="text-xl font-bold">精油を登録する</h1>
      <Suspense fallback={null}>
        <NewOilNotice searchParams={searchParams} />
      </Suspense>
      <Suspense fallback={<p className="text-sm text-gray-500">読み込み中…</p>}>
        <NewOilForm />
      </Suspense>
      <p className="text-xs text-gray-500">登録したあとの画面で、IFRA(Annex・基準)との結びつきを選びます。</p>
    </main>
  );
}

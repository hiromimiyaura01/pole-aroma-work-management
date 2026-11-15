import { Suspense } from "react";
import Link from "next/link";
import { connection } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { todayJst } from "@/lib/formulas";
import { FormulaForm } from "@/components/FormulaForm";
import { Notice } from "@/components/ui";
import { createFormula } from "../actions";

async function NewFormulaNotice({ searchParams }: Pick<PageProps<"/formulas/new">, "searchParams">) {
  return <Notice searchParams={await searchParams} />;
}

// 画面を開くたびに「この1回の登録の番号」を新しく作る(リクエストのたびに作るため connection() を使う)
async function NewFormulaForm() {
  await connection();
  const supabase = await createClient();
  const { data } = await supabase.from("essential_oils").select("id, name").order("name");

  return (
    <FormulaForm
      oils={data ?? []}
      action={createFormula}
      submitLabel="登録する"
      submissionToken={crypto.randomUUID()}
      defaults={{ fragrance_pct: "10", completed_on: todayJst(), memo: "", lines: [] }}
    />
  );
}

export default function NewFormulaPage({ searchParams }: PageProps<"/formulas/new">) {
  return (
    <main className="mx-auto flex w-full max-w-xl flex-1 flex-col gap-4 px-4 py-6">
      <Link href="/formulas" className="text-sm underline">
        ← 処方の一覧
      </Link>
      <h1 className="text-xl font-bold">処方を登録する</h1>
      <Suspense fallback={null}>
        <NewFormulaNotice searchParams={searchParams} />
      </Suspense>
      <Suspense fallback={<p className="text-sm text-gray-500">読み込み中…</p>}>
        <NewFormulaForm />
      </Suspense>
      <p className="text-xs text-gray-500">
        登録すると、不変 ID(P+5桁)が自動で振られます。その番号をノートに書いてください。販売名は、登録したあとの画面でつけます。
      </p>
    </main>
  );
}

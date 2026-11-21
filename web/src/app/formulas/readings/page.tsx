import { Suspense } from "react";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { fmtDateTimeJst } from "@/lib/formulas";
import { READING_STATUS_LABELS, type Draft, type ReadingStatus } from "@/lib/readings";
import { Badge, Notice } from "@/components/ui";
import { PhotoUpload } from "@/components/PhotoUpload";
import { uploadAndRead } from "./actions";

async function ReadingsNotice({ searchParams }: Pick<PageProps<"/formulas/readings">, "searchParams">) {
  return <Notice searchParams={await searchParams} />;
}

const tone = (s: ReadingStatus) =>
  s === "read" ? "warn" : s === "saved" ? "ok" : s === "failed" ? "danger" : "muted";

async function ReadingList() {
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("formula_readings")
    .select("id, photo_name, status, draft, saved_formula_id, created_at")
    .order("created_at", { ascending: false })
    .limit(30);
  if (error) return <p className="text-sm text-red-600">読み込めませんでした:{error.message}</p>;
  const rows = data ?? [];
  if (rows.length === 0) return <p className="text-sm text-gray-500">まだ読み取った写真はありません。</p>;

  return (
    <ul className="flex flex-col divide-y divide-gray-200 dark:divide-gray-700">
      {rows.map((r) => {
        const draft = r.draft as Draft | null;
        const labels = (draft?.formulas ?? []).map((f) => f.label ?? f.formula_id ?? "名前なし").join("/");
        return (
          <li key={r.id}>
            <Link href={`/formulas/readings/${r.id}`} className="flex flex-col gap-1 py-3 hover:bg-gray-50 dark:hover:bg-gray-900">
              <span className="flex flex-wrap items-center gap-2">
                <Badge tone={tone(r.status as ReadingStatus)}>{READING_STATUS_LABELS[r.status as ReadingStatus]}</Badge>
                <span className="font-medium">{labels || r.photo_name || "写真"}</span>
                {r.saved_formula_id && <span className="text-sm">→ {r.saved_formula_id}</span>}
              </span>
              <span className="text-xs text-gray-500">{fmtDateTimeJst(r.created_at)} に上げた</span>
            </Link>
          </li>
        );
      })}
    </ul>
  );
}

export default function ReadingsPage({ searchParams }: PageProps<"/formulas/readings">) {
  return (
    <main className="mx-auto flex w-full max-w-xl flex-1 flex-col gap-4 px-4 py-6">
      <Link href="/formulas" className="text-sm underline">
        ← 処方の一覧
      </Link>
      <h1 className="text-xl font-bold">ノートの写真から登録する</h1>
      <Suspense fallback={null}>
        <ReadingsNotice searchParams={searchParams} />
      </Suspense>
      <p className="text-sm text-gray-600 dark:text-gray-300">
        手書きの処方ノートの写真を選ぶと、AI(Claude)が下書きを作ります。下書きは、確認・修正してから保存します。
        写真は、ログインした人だけが見られる場所に残ります。
      </p>
      <PhotoUpload action={uploadAndRead} />

      <h2 className="mt-4 font-bold">読み取った写真</h2>
      <Suspense fallback={<p className="text-sm text-gray-500">読み込み中…</p>}>
        <ReadingList />
      </Suspense>
    </main>
  );
}

import { Suspense } from "react";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { KIND_LABELS, MATCH_LABELS, cleanSearch, type OilStatus } from "@/lib/oils";
import { Badge, buttonClass, inputClass } from "@/components/ui";

function AnnexBadge({ oil }: { oil: OilStatus }) {
  if (!oil.annex_match) return <Badge tone="warn">Annex 未設定</Badge>;
  const tone = oil.annex_match === "exact" ? "ok" : oil.annex_match === "approx" ? "info" : "muted";
  return <Badge tone={tone}>Annex {MATCH_LABELS[oil.annex_match]}</Badge>;
}

async function OilList({ searchParams }: Pick<PageProps<"/oils">, "searchParams">) {
  const q = cleanSearch((await searchParams).q);
  const supabase = await createClient();
  let query = supabase.from("essential_oil_status").select("*").order("name");
  if (q) query = query.or(`name.ilike.%${q}%,botanical_name.ilike.%${q}%`);
  const { data, error } = await query;

  if (error) return <p className="text-sm text-red-600">読み込めませんでした:{error.message}</p>;
  const oils = (data ?? []) as OilStatus[];
  const unset = oils.filter((o) => !o.annex_match).length;

  return (
    <>
      <p className="text-sm text-gray-600 dark:text-gray-300">
        {oils.length}件{q && `(「${q}」で絞り込み)`}
        {unset > 0 && `・Annex 未設定 ${unset}件`}
      </p>
      <ul className="flex flex-col divide-y divide-gray-200 dark:divide-gray-700">
        {oils.map((oil) => (
          <li key={oil.id}>
            <Link href={`/oils/${oil.id}`} className="flex flex-col gap-1 py-3 hover:bg-gray-50 dark:hover:bg-gray-900">
              <span className="font-medium">{oil.name}</span>
              <span className="text-xs text-gray-500">
                {oil.botanical_name ?? "学名なし"}・{KIND_LABELS[oil.kind] ?? oil.kind}
                {oil.extraction_method && `・${oil.extraction_method}`}
              </span>
              <span className="flex flex-wrap gap-1">
                <AnnexBadge oil={oil} />
                {oil.standard_link_count > 0 && <Badge tone="info">基準 {oil.standard_link_count}件</Badge>}
              </span>
            </Link>
          </li>
        ))}
      </ul>
      {oils.length === 0 && <p className="text-sm text-gray-500">まだ登録されていません。</p>}
    </>
  );
}

async function SearchBox({ searchParams }: Pick<PageProps<"/oils">, "searchParams">) {
  const q = cleanSearch((await searchParams).q);
  return (
    <form className="flex gap-2">
      <input name="q" defaultValue={q} placeholder="名前・学名で絞り込み" className={inputClass} />
      <button type="submit" className={buttonClass}>
        検索
      </button>
    </form>
  );
}

export default function OilsPage({ searchParams }: PageProps<"/oils">) {
  return (
    <main className="mx-auto flex w-full max-w-xl flex-1 flex-col gap-4 px-4 py-6">
      <div className="flex items-center justify-between">
        <h1 className="text-xl font-bold">精油</h1>
        <Link href="/oils/new" className={buttonClass}>
          + 登録
        </Link>
      </div>
      <Suspense fallback={null}>
        <SearchBox searchParams={searchParams} />
      </Suspense>
      <Suspense fallback={<p className="text-sm text-gray-500">読み込み中…</p>}>
        <OilList searchParams={searchParams} />
      </Suspense>
    </main>
  );
}

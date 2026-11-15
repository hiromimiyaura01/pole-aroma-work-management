import { Suspense } from "react";
import Link from "next/link";
import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { AMENDMENT, MATCH_LABELS, cleanSearch, type OilStatus } from "@/lib/oils";
import { OilForm } from "@/components/OilForm";
import { describeIso } from "@/lib/iso9235";
import { SubmitButton } from "@/components/SubmitButton";
import { Badge, Notice, inputClass, buttonClass, subButtonClass } from "@/components/ui";
import {
  updateOil,
  deleteOil,
  setAnnexLink,
  clearAnnexLink,
  addStandardLink,
  removeStandardLink,
} from "../actions";

type Ncs = {
  ncs_name: string;
  iso_category: string | null;
  botanical_name: string | null;
  constituent_count: number;
  constituents: string;
  ncs_cas?: string | null; // 精油そのものの CAS 番号
  ncs_other_cas?: string | null;
  rifm_id?: string | null;
};

const NCS_COLUMNS = "ncs_name, iso_category, botanical_name, constituent_count, constituents";
const NCS_ID_COLUMNS = "ncs_cas, ncs_other_cas, rifm_id"; // 20261114000004 の SQL で足した列

// 精油そのものの CAS 番号と RIFM の番号(名前だけが違う精油を見分ける手がかり)
function NcsIds({ ncs }: { ncs: Pick<Ncs, "ncs_cas" | "ncs_other_cas" | "rifm_id"> }) {
  if (!ncs.ncs_cas && !ncs.ncs_other_cas && !ncs.rifm_id) return null;
  return (
    <p className="text-xs text-gray-500">
      精油の CAS 番号:{ncs.ncs_cas ?? "記載なし"}
      {ncs.ncs_other_cas && `(そのほか:${ncs.ncs_other_cas})`}
      {ncs.rifm_id && `・RIFM ${ncs.rifm_id}`}
    </p>
  );
}

type StandardLimit = {
  standard_key: string;
  standard_name: string;
  intrinsic_property: string | null;
  effective_kind: string;
  effective_pct: number | null;
};

type SearchParams = { [key: string]: string | string[] | undefined };

function limitText(s: Pick<StandardLimit, "effective_kind" | "effective_pct">) {
  switch (s.effective_kind) {
    case "limit":
      return `11B の上限 ${s.effective_pct}%`;
    case "prohibited":
      return "使用禁止";
    case "no_restriction":
      return "11B は制限なし";
    case "sum_group":
      return "精油ごとの基準の合計で見る";
    case "not_applicable":
      return "上限の数値なし(規格)";
    default:
      return s.effective_kind;
  }
}

// ---- Annex との結びつき -------------------------------------------------
async function AnnexSection({ oil, searchParams }: { oil: OilStatus; searchParams: SearchParams }) {
  // 検索の言葉:入力がなければ、学名の最初の2語(属名+種小名)で探す
  const typed = cleanSearch(searchParams.aq);
  const q = typed || cleanSearch(oil.botanical_name?.split(/\s+/).slice(0, 2).join(" "));
  const supabase = await createClient();

  // CAS 番号の列は、SQL(20261114000004)を実行するまで存在しない。なければ、今までの列だけで読む
  const searchNcs = (columns: string) =>
    supabase
      .from("ifra_annex_ncs")
      .select(columns)
      .eq("amendment", AMENDMENT)
      .or(`ncs_name.ilike.%${q}%,botanical_name.ilike.%${q}%`)
      .order("ncs_name")
      .limit(30);

  let candidates: Ncs[] = [];
  if (q) {
    let res = await searchNcs(`${NCS_COLUMNS}, ${NCS_ID_COLUMNS}`);
    if (res.error) res = await searchNcs(NCS_COLUMNS);
    candidates = (res.data ?? []) as unknown as Ncs[];
  }

  // 今結びついている Annex の精油の CAS 番号
  let linkedIds: Pick<Ncs, "ncs_cas" | "ncs_other_cas" | "rifm_id"> | null = null;
  if (oil.annex_ncs_name) {
    let query = supabase
      .from("ifra_annex_ncs")
      .select(NCS_ID_COLUMNS)
      .eq("amendment", AMENDMENT)
      .eq("ncs_name", oil.annex_ncs_name);
    query = oil.annex_iso_category ? query.eq("iso_category", oil.annex_iso_category) : query.is("iso_category", null);
    const { data } = await query.maybeSingle();
    linkedIds = data as typeof linkedIds;
  }

  return (
    <section className="flex flex-col gap-3 rounded border border-gray-200 p-4 dark:border-gray-700">
      <h2 className="font-bold">① Annex との結びつき(成分の含有率を使う)</h2>

      {oil.annex_match ? (
        <div className="flex flex-col gap-2 text-sm">
          <p>
            <Badge tone={oil.annex_match === "exact" ? "ok" : oil.annex_match === "approx" ? "info" : "muted"}>
              {MATCH_LABELS[oil.annex_match]}
            </Badge>{" "}
            {oil.annex_ncs_name && (
              <span>
                {oil.annex_ncs_name}(ISO {oil.annex_iso_category ?? "-"})
                {describeIso(oil.annex_iso_category) && (
                  <span className="text-gray-600 dark:text-gray-300">:{describeIso(oil.annex_iso_category)}</span>
                )}
              </span>
            )}
          </p>
          {linkedIds && <NcsIds ncs={linkedIds} />}
          {oil.annex_reason && <p className="text-gray-600 dark:text-gray-300">理由:{oil.annex_reason}</p>}
          <form action={clearAnnexLink}>
            <input type="hidden" name="id" value={oil.id} />
            <SubmitButton className={subButtonClass} pendingText="処理中…">結びつきを外す(未設定に戻す)</SubmitButton>
          </form>
        </div>
      ) : (
        <p className="text-sm">
          <Badge tone="warn">未設定</Badge> このままだと、確認の結果に「未確認の精油あり」と出ます。
        </p>
      )}

      <form className="flex gap-2">
        <input name="aq" defaultValue={typed} placeholder={q ? `例:${q}` : "Annex の精油名・学名で探す"} className={inputClass} />
        <button type="submit" className={buttonClass}>
          探す
        </button>
      </form>
      {!typed && q && <p className="text-xs text-gray-500">学名の「{q}」で探した結果です。</p>}

      <ul className="flex flex-col gap-3">
        {candidates.map((c) => (
          <li key={`${c.ncs_name}-${c.iso_category}`} className="rounded bg-gray-50 p-3 text-sm dark:bg-gray-900">
            <p className="font-medium">
              {c.ncs_name} <span className="text-xs text-gray-500">ISO {c.iso_category ?? "-"}</span>
            </p>
            {describeIso(c.iso_category) && (
              <p className="text-sm text-gray-700 dark:text-gray-200">{describeIso(c.iso_category)}</p>
            )}
            <p className="text-xs text-gray-500">{c.botanical_name}</p>
            <NcsIds ncs={c} />
            <p className="mt-1 text-xs">規制成分:{c.constituents}</p>
            <form action={setAnnexLink} className="mt-2 flex flex-col gap-2">
              <input type="hidden" name="id" value={oil.id} />
              <input type="hidden" name="ncs_name" value={c.ncs_name} />
              <input type="hidden" name="iso_category" value={c.iso_category ?? ""} />
              <input name="reason" placeholder="近似のときの理由(例:木部の精油がないので樹皮で代用)" className={inputClass} />
              <div className="flex gap-2">
                <SubmitButton name="match_type" value="exact" className={subButtonClass} pendingText="処理中…">一致として選ぶ</SubmitButton>
                <SubmitButton name="match_type" value="approx" className={subButtonClass} pendingText="処理中…">近似として選ぶ</SubmitButton>
              </div>
            </form>
          </li>
        ))}
      </ul>
      {q && candidates.length === 0 && <p className="text-sm text-gray-500">見つかりませんでした。言葉を変えて探してください。</p>}
      {candidates.length > 0 && (
        <p className="text-xs text-gray-500">
          「部位/方法」の説明は、Annex の「ISO の区分」(例:G2.5)を、IFRA の Annex の付録(Appendix - ISO9235)にもとづいて日本語にしたものです。
          学名も区分も同じで名前だけが違う精油は、規制成分の中身と、精油の CAS 番号(成分表や SDS に書いてあれば)で見分けてください。「そのほか」の番号は、別の名前の精油と重なることがあります。
        </p>
      )}

      <form action={setAnnexLink} className="flex flex-col gap-2 border-t border-gray-200 pt-3 dark:border-gray-700">
        <input type="hidden" name="id" value={oil.id} />
        <p className="text-sm">探しても Annex に該当するものがないとき:</p>
        <input name="reason" placeholder="理由(例:Annex に載っていない)" className={inputClass} />
        <div>
          <SubmitButton name="match_type" value="none" className={subButtonClass} pendingText="処理中…">Annex になし として記録する</SubmitButton>
        </div>
      </form>
    </section>
  );
}

// ---- 原料そのものの基準との結びつき -------------------------------------
async function StandardSection({ oil, searchParams }: { oil: OilStatus; searchParams: SearchParams }) {
  const sq = cleanSearch(searchParams.sq);
  const supabase = await createClient();

  const { data: linkRows } = await supabase
    .from("oil_standard_links")
    .select("standard_key, note")
    .eq("oil_id", oil.id)
    .eq("amendment", AMENDMENT);
  const links = (linkRows ?? []) as { standard_key: string; note: string | null }[];

  let linked: StandardLimit[] = [];
  if (links.length > 0) {
    const { data } = await supabase
      .from("ifra_limits_11b_effective")
      .select("standard_key, standard_name, intrinsic_property, effective_kind, effective_pct")
      .eq("amendment", AMENDMENT)
      .in("standard_key", links.map((l) => l.standard_key));
    linked = (data ?? []) as StandardLimit[];
  }

  let candidates: StandardLimit[] = [];
  if (sq) {
    const { data } = await supabase
      .from("ifra_limits_11b_effective")
      .select("standard_key, standard_name, intrinsic_property, effective_kind, effective_pct")
      .eq("amendment", AMENDMENT)
      .ilike("standard_name", `%${sq}%`)
      .order("standard_name")
      .limit(20);
    candidates = (data ?? []) as StandardLimit[];
  }

  return (
    <section className="flex flex-col gap-3 rounded border border-gray-200 p-4 dark:border-gray-700">
      <h2 className="font-bold">② 原料そのものの基準(あれば)</h2>
      <p className="text-xs text-gray-500">
        例:圧搾ベルガモット → Bergamot oil expressed、オークモス → Oakmoss extracts。多くの精油には該当なしで大丈夫です。
      </p>

      {linked.length > 0 ? (
        <ul className="flex flex-col gap-2 text-sm">
          {linked.map((s) => (
            <li key={s.standard_key} className="flex items-center justify-between gap-2">
              <span>
                {s.standard_name}({s.standard_key})<br />
                <span className="text-xs text-gray-500">{limitText(s)}</span>
              </span>
              <form action={removeStandardLink}>
                <input type="hidden" name="id" value={oil.id} />
                <input type="hidden" name="standard_key" value={s.standard_key} />
                <SubmitButton className={subButtonClass} pendingText="処理中…">外す</SubmitButton>
              </form>
            </li>
          ))}
        </ul>
      ) : (
        <p className="text-sm text-gray-500">結びついている基準はありません。</p>
      )}

      <form className="flex gap-2">
        <input name="sq" defaultValue={sq} placeholder="基準の名前で探す(英語。例:Bergamot)" className={inputClass} />
        <button type="submit" className={buttonClass}>
          探す
        </button>
      </form>
      <ul className="flex flex-col gap-2">
        {candidates.map((s) => (
          <li key={s.standard_key} className="flex items-center justify-between gap-2 rounded bg-gray-50 p-3 text-sm dark:bg-gray-900">
            <span>
              {s.standard_name}({s.standard_key})<br />
              <span className="text-xs text-gray-500">
                {limitText(s)}
                {s.intrinsic_property && `・${s.intrinsic_property}`}
              </span>
            </span>
            <form action={addStandardLink}>
              <input type="hidden" name="id" value={oil.id} />
              <input type="hidden" name="standard_key" value={s.standard_key} />
              <SubmitButton className={subButtonClass} pendingText="処理中…">結びつける</SubmitButton>
            </form>
          </li>
        ))}
      </ul>
      {sq && candidates.length === 0 && <p className="text-sm text-gray-500">見つかりませんでした。</p>}
    </section>
  );
}

// ---- 画面全体 ---------------------------------------------------------
async function OilDetail({ params, searchParams }: PageProps<"/oils/[id]">) {
  const { id } = await params;
  const sp = (await searchParams) as SearchParams;
  if (!/^[0-9a-f-]{36}$/.test(id)) notFound();

  const supabase = await createClient();
  const { data } = await supabase.from("essential_oil_status").select("*").eq("id", id).maybeSingle();
  if (!data) notFound();
  const oil = data as OilStatus;

  return (
    <>
      <h1 className="text-xl font-bold">{oil.name}</h1>
      <Notice searchParams={sp} />
      <AnnexSection oil={oil} searchParams={sp} />
      <StandardSection oil={oil} searchParams={sp} />
      <details className="rounded border border-gray-200 p-4 dark:border-gray-700">
        <summary className="cursor-pointer font-bold">基本情報を直す</summary>
        <div className="mt-4">
          <OilForm oil={oil} action={updateOil} submitLabel="保存する" />
        </div>
        <form action={deleteOil} className="mt-6 border-t border-gray-200 pt-4 dark:border-gray-700">
          <input type="hidden" name="id" value={oil.id} />
          <SubmitButton className="text-sm text-red-600 underline" pendingText="消しています…">この精油を消す(IFRA との結びつきも消えます)</SubmitButton>
        </form>
      </details>
    </>
  );
}

export default function OilPage(props: PageProps<"/oils/[id]">) {
  return (
    <main className="mx-auto flex w-full max-w-xl flex-1 flex-col gap-4 px-4 py-6">
      <Link href="/oils" className="text-sm underline">
        ← 精油の一覧
      </Link>
      <Suspense fallback={<p className="text-sm text-gray-500">読み込み中…</p>}>
        <OilDetail {...props} />
      </Suspense>
    </main>
  );
}

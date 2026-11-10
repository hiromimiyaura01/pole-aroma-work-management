-- =====================================================================
-- 精油の登録(R5)と、IFRA との結びつき(R9)
-- 実行方法:Supabase の SQL Editor に貼って Run(1回だけ)
-- 価格・在庫(②の段階)は、あとで項目を足す(2026-11-10 ひろみ)
-- =====================================================================

-- 1. 精油 ---------------------------------------------------------------
create table public.essential_oils (
  id                 uuid primary key default gen_random_uuid(),
  name               text not null,                 -- ひろみの呼び方(例:ラベンダー・アングスティフォリア)
  botanical_name     text,                          -- 学名(例:Lavandula angustifolia)
  kind               text not null default 'essential_oil' check (kind in (
                       'essential_oil',  -- 精油
                       'absolute',       -- アブソリュート
                       'co2',            -- CO2 抽出
                       'concrete',       -- コンクリート
                       'other'           -- そのほか
                     )),
  plant_part         text,                          -- 抽出部位(例:花、果皮、葉)
  extraction_method  text,                          -- 抽出方法(例:水蒸気蒸留、圧搾)
  brand              text,
  memo               text,
  created_at         timestamptz not null default now(),
  updated_at         timestamptz not null default now()
);

-- 2. Annex との結びつき(成分の含有率を使うため)-------------------------
-- Annex の精油は「名前+ISO の区分」で1つに決まる
-- (例:Grapefruit oil は圧搾 G2.5 と蒸留 G2.12 の2種類がある)
create table public.oil_annex_links (
  oil_id             uuid not null references public.essential_oils on delete cascade,
  amendment          int  not null references public.ifra_amendments,
  match_type         text not null check (match_type in (
                       'exact',   -- 一致
                       'approx',  -- 近似(理由を書く)
                       'none'     -- Annex に該当なし(確認した結果)
                     )),
  ncs_name           text,                          -- Annex の精油の名前(none のときは空)
  iso_category       text,                          -- Annex の ISO の区分
  reason             text,                          -- 近似・なしの理由
  checked_on         date not null default current_date,
  primary key (oil_id, amendment),
  check ((match_type = 'none') = (ncs_name is null))
);

-- 3. 原料そのものの基準との結びつき(例:圧搾ベルガモット → IFRA_STD_087)--
create table public.oil_standard_links (
  oil_id             uuid not null references public.essential_oils on delete cascade,
  amendment          int  not null,
  standard_key       text not null,
  note               text,
  checked_on         date not null default current_date,
  primary key (oil_id, amendment, standard_key),
  foreign key (amendment, standard_key) references public.ifra_standards
);

-- 4. Annex の精油の一覧(選ぶ画面用)------------------------------------
create view public.ifra_annex_ncs
with (security_invoker = true) as
select
  amendment,
  ncs_name,
  iso_category,
  min(botanical_name)            as botanical_name,
  count(*)                       as constituent_count,
  string_agg(constituent_name || ' ' || coalesce(concentration_pct::text, raw_value, '?') || '%',
             ', ' order by concentration_pct desc nulls last) as constituents
from public.ifra_annex
group by amendment, ncs_name, iso_category;

-- 5. 精油ごとの「IFRA の確認の状態」(一覧画面用)-----------------------
-- 未設定:Annex の結びつきをまだ選んでいない → 確認の結果に「未確認の精油あり」と出る
create view public.essential_oil_status
with (security_invoker = true) as
select
  o.*,
  a.match_type                   as annex_match,
  a.ncs_name                     as annex_ncs_name,
  a.iso_category                 as annex_iso_category,
  a.reason                       as annex_reason,
  (select count(*) from public.oil_standard_links s
    where s.oil_id = o.id and s.amendment = 51) as standard_link_count
from public.essential_oils o
left join public.oil_annex_links a on a.oil_id = o.id and a.amendment = 51;

-- 6. 誰が読める・書けるか(RLS)--------------------------------------
-- ログインした人(=ひろみだけ)が、読み・書き・消しをできる
alter table public.essential_oils      enable row level security;
alter table public.oil_annex_links     enable row level security;
alter table public.oil_standard_links  enable row level security;

create policy "ログインした人は全部できる" on public.essential_oils
  for all to authenticated using (true) with check (true);
create policy "ログインした人は全部できる" on public.oil_annex_links
  for all to authenticated using (true) with check (true);
create policy "ログインした人は全部できる" on public.oil_standard_links
  for all to authenticated using (true) with check (true);

-- 更新日時を自動で入れる
create function public.set_updated_at() returns trigger
language plpgsql as $$
begin
  new.updated_at = now();
  return new;
end $$;

create trigger essential_oils_updated_at
  before update on public.essential_oils
  for each row execute function public.set_updated_at();

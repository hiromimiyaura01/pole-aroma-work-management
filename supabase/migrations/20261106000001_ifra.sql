-- =====================================================================
-- IFRA の基準データ(R7・R8)
-- 出典:IFRA 51st Amendment の公式 Excel(一覧表・Annex)
-- 値は「参考情報」。最終的な判断は事業者が行う。
-- 実行方法:Supabase の SQL Editor に貼って Run(1回だけ)
-- =====================================================================

-- 1. 改正の版 -------------------------------------------------------------
create table public.ifra_amendments (
  amendment        int primary key,                 -- 例:51
  label            text not null,                   -- 例:IFRA 51st Amendment
  overview_url     text not null,                   -- 一覧表の公式 URL
  annex_url        text not null,                   -- Annex の公式 URL
  overview_sha256  text not null,                   -- 取り込んだファイルの指紋(同じファイルか確かめる用)
  annex_sha256     text not null,
  imported_at      timestamptz not null default now(),
  note             text
);

-- 2. 基準(Standard)--------------------------------------------------------
create table public.ifra_standards (
  amendment           int  not null references public.ifra_amendments,
  standard_key        text not null,                -- 例:IFRA_STD_067
  name                text not null,
  standard_type       text not null,                -- RESTRICTION / PROHIBITION / SPECIFICATION と、その組み合わせ
  intrinsic_property  text,                         -- 規制の理由(皮膚感作性、光毒性など)
  last_amended_in     int,                          -- その基準が最後に改訂された改正の番号
  cas_numbers         text[] not null default '{}',
  synonyms            text,
  notes               text,                         -- 一覧表の注記をまとめたもの
  primary key (amendment, standard_key)
);

-- 基準と CAS 番号の対応(Annex の成分と基準を結びつけるため)
create table public.ifra_standard_cas (
  amendment     int  not null,
  standard_key  text not null,
  cas           text not null,
  primary key (amendment, standard_key, cas),
  foreign key (amendment, standard_key) references public.ifra_standards
);
create index on public.ifra_standard_cas (amendment, cas);

-- 3. 製品カテゴリごとの上限 ---------------------------------------------
-- raw_value に Excel の元の値を残し、limit_kind / limit_pct に整えた値を入れる
create table public.ifra_limits (
  amendment     int  not null,
  standard_key  text not null,
  category      text not null,                      -- 1, 2, …, 11A, 11B, 12
  raw_value     text,                               -- Excel の元の値(空欄は null)
  limit_kind    text not null check (limit_kind in (
                  'limit',          -- 数値の上限(%)
                  'no_restriction', -- 制限なし
                  'prohibited',     -- 使用禁止
                  'not_applicable', -- 規格(Specification)だけの基準で、上限の数値がない
                  'see_notebox',    -- 基準の本文を読む必要がある
                  'annotated'       -- 注記つきの数値(例:0.0015 (5-MOP))
                )),
  limit_pct     numeric,                            -- 完成品中の上限(%)。limit / annotated / prohibited(0)のときだけ
  needs_review  boolean not null default false,     -- 人の確認が必要か
  primary key (amendment, standard_key, category),
  foreign key (amendment, standard_key) references public.ifra_standards
);

-- 4. Annex(精油ごとの規制成分の典型的な含有率)----------------------
create table public.ifra_annex (
  id                 bigint generated always as identity primary key,
  amendment          int  not null references public.ifra_amendments,
  source_row         int  not null,                 -- Excel の行番号(元を確かめる用)
  ncs_name           text not null,                 -- 例:Tea tree oil
  botanical_name     text,                          -- 学名
  iso_category       text,                          -- ISO 9235 の区分(抽出部位・方法)
  rifm_id            text,
  ncs_cas            text,
  ncs_other_cas      text,
  constituent_cas    text not null,                 -- 規制成分の CAS 番号
  constituent_name   text not null,
  raw_value          text,                          -- Excel の元の値
  concentration_pct  numeric,                       -- 典型的な含有率(%)
  needs_review       boolean not null default false,
  unique (amendment, source_row)
);
create index on public.ifra_annex (amendment, constituent_cas);

-- 5. 人が確認する項目(R8:例外表)-------------------------------------
-- 決まったルールで直せない値を、ひろみが基準の本文で確認して埋める
create table public.ifra_review_items (
  id            bigint generated always as identity primary key,
  amendment     int  not null references public.ifra_amendments,
  item_type     text not null check (item_type in (
                  'limit',          -- 上限の値(See Notebox、注記つき)
                  'annex_value',    -- Annex の値の書き方がおかしい
                  'annex_mapping'   -- Annex の成分が、どの基準にも結びつかない
                )),
  standard_key  text,
  category      text,
  ref           text not null,                      -- 何の項目か(人が読むための説明)
  raw_value     text,
  status        text not null default 'pending' check (status in ('pending', 'confirmed')),
  treatment     text,                               -- 確認した結果の扱い(例:11B では上限 ◯%として扱う)
  treated_pct   numeric,                            -- 扱いが数値のとき
  source        text,                               -- 出典(基準の PDF の名前・URL・該当箇所)
  checked_on    date,
  note          text
);

-- 6. 見やすくするためのビュー:精油ごとの規制成分と、11B の上限 -----------
create view public.ifra_annex_11b
with (security_invoker = true) as
select
  a.amendment,
  a.ncs_name,
  a.botanical_name,
  a.iso_category,
  a.constituent_name,
  a.constituent_cas,
  a.concentration_pct,
  sc.standard_key,
  s.name          as standard_name,
  l.limit_kind,
  l.limit_pct     as limit_pct_11b,
  l.needs_review  as limit_needs_review
from public.ifra_annex a
left join public.ifra_standard_cas sc
  on sc.amendment = a.amendment and sc.cas = a.constituent_cas
left join public.ifra_standards s
  on s.amendment = sc.amendment and s.standard_key = sc.standard_key
left join public.ifra_limits l
  on l.amendment = sc.amendment and l.standard_key = sc.standard_key and l.category = '11B';

-- 7. 誰が読める・書けるか(RLS)--------------------------------------
-- ログインした人(=ひろみだけ。新規登録は止めている)だけが読める。
-- データの追加・変更は SQL Editor(管理者)から行う。
-- 例外表だけは、あとでアプリの画面から書けるように更新も許す。
alter table public.ifra_amendments  enable row level security;
alter table public.ifra_standards   enable row level security;
alter table public.ifra_standard_cas enable row level security;
alter table public.ifra_limits      enable row level security;
alter table public.ifra_annex       enable row level security;
alter table public.ifra_review_items enable row level security;

create policy "ログインした人は読める" on public.ifra_amendments   for select to authenticated using (true);
create policy "ログインした人は読める" on public.ifra_standards    for select to authenticated using (true);
create policy "ログインした人は読める" on public.ifra_standard_cas for select to authenticated using (true);
create policy "ログインした人は読める" on public.ifra_limits       for select to authenticated using (true);
create policy "ログインした人は読める" on public.ifra_annex        for select to authenticated using (true);
create policy "ログインした人は読める" on public.ifra_review_items for select to authenticated using (true);
create policy "ログインした人は確認結果を書ける" on public.ifra_review_items for update to authenticated using (true) with check (true);

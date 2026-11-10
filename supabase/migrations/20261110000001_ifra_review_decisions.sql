-- =====================================================================
-- IFRA の例外表(R8)の決定を、確認の計算(R10)で使える形にする
-- 実行方法:Supabase の SQL Editor に貼って Run(1回だけ)
-- =====================================================================

-- 1. 足し算で見るグループ ----------------------------------------------
-- 例:柑橘のフロクマリン(IFRA_STD_089)。5-MOP の量が分からないときは、
--     グループ内の精油ごとに「使用量 ÷ 上限」を出し、その合計が 100% を超えないかを見る
create table public.ifra_sum_groups (
  amendment     int  not null references public.ifra_amendments,
  group_key     text not null,                      -- 例:furocoumarin
  group_name    text not null,                      -- 例:光毒性のフロクマリンを含む精油
  standard_key  text not null,                      -- グループに入る基準
  source        text not null,                      -- 出典(どの基準の本文に書いてあるか)
  primary key (amendment, group_key, standard_key),
  foreign key (amendment, standard_key) references public.ifra_standards
);

alter table public.ifra_sum_groups enable row level security;
create policy "ログインした人は読める" on public.ifra_sum_groups for select to authenticated using (true);

-- 2. カテゴリ 11B の「使う上限」---------------------------------------
-- Excel の値(ifra_limits)に、人が確認した例外表(ifra_review_items)の決定を重ねたもの。
-- 確認の計算(R10)は、このビューを使う。
create view public.ifra_limits_11b_effective
with (security_invoker = true) as
select
  l.amendment,
  l.standard_key,
  s.name                                   as standard_name,
  s.intrinsic_property,
  l.raw_value,
  l.limit_kind                             as original_kind,
  case when r.status = 'confirmed' and r.treated_pct is not null then 'limit'
       when r.status = 'confirmed' and r.treated_pct is null     then 'sum_group'
       else l.limit_kind end               as effective_kind,
  case when r.status = 'confirmed' then r.treated_pct
       else l.limit_pct end                as effective_pct,
  (l.needs_review and coalesce(r.status, 'pending') <> 'confirmed') as still_needs_review,
  r.treatment,
  r.source                                 as treatment_source
from public.ifra_limits l
join public.ifra_standards s
  on s.amendment = l.amendment and s.standard_key = l.standard_key
left join public.ifra_review_items r
  on r.amendment = l.amendment and r.item_type = 'limit'
 and r.standard_key = l.standard_key and r.category = l.category
where l.category = '11B';

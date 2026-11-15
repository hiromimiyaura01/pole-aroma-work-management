-- =====================================================================
-- 確認の計算(R10)・結果の見せ方の元(R11)・判断の記録(R12)
-- 実行方法:Supabase の SQL Editor に貼って Run(1回だけ)
-- 値は「参考情報」。Annex の含有率は典型値で、実際の瓶(ロット)では変わる。
-- 最終的な判断は事業者が行う。
--
-- 計算の流れ(ビューを順に重ねている。途中のビューも SQL Editor で見られる)
--   formula_line_concentrations    配合行ごとの完成品中の濃度(前のファイル)
--   → formula_oil_concentrations   精油ごとにまとめた濃度
--   → formula_check_contributions  精油 × 規制成分ごとの「完成品に入る量」
--   → formula_check_items          基準ごとの合計と、11B の上限との比・段階
--   → formula_check_board          ↑に、ひろみの最新の判断を重ねたもの(画面はこれを読む)
-- =====================================================================

-- 1. 精油ごとの完成品中の濃度 ---------------------------------------------
-- 同じ精油が処方の中に2行あるときは、足し合わせる
create view public.formula_oil_concentrations
with (security_invoker = true) as
select
  c.formula_id,
  c.oil_id,
  o.name                          as oil_name,
  sum(c.oil_share)                as oil_share,
  sum(c.conc_in_product_pct)      as conc_pct
from public.formula_line_concentrations c
join public.essential_oils o on o.id = c.oil_id
group by c.formula_id, c.oil_id, o.name;

-- 2. Annex を「精油 × 規制成分」で1行にまとめたもの -------------------------
-- Annex の Excel には、同じ精油・同じ成分の行が2回入っているものがある
-- (第51次では Lavandin concrete × alpha-Bisabolol)。そのまま足すと2倍に数えてしまうので、
-- 1行にまとめる。値が違う行があったときは、大きい方(安全側)を使う
create view public.ifra_annex_constituents
with (security_invoker = true) as
select
  amendment,
  ncs_name,
  iso_category,
  constituent_cas,
  min(constituent_name)                                   as constituent_name,
  max(concentration_pct)                                  as concentration_pct,
  bool_or(needs_review or concentration_pct is null)      as value_needs_review,
  count(*)                                                as source_rows
from public.ifra_annex
group by amendment, ncs_name, iso_category, constituent_cas;

-- 3. 精油 × 規制成分ごとの、完成品に入る量 ---------------------------------
-- source = 'annex':完成品中の精油の濃度 × Annex の含有率
-- source = 'oil'  :原料そのものに基準がある精油(例:圧搾ベルガモット)。精油の濃度そのもの
create view public.formula_check_contributions
with (security_invoker = true) as
select
  fo.formula_id,
  l.amendment,
  'annex'::text                             as source,
  fo.oil_id,
  fo.oil_name,
  fo.conc_pct                               as oil_conc_pct,
  l.match_type,                             -- exact(一致)/approx(近似)
  l.ncs_name,                               -- 使った Annex の精油(近似のときは代用した参考値)
  l.iso_category,
  l.reason                                  as match_reason,
  a.constituent_cas,
  a.constituent_name,
  a.concentration_pct                       as annex_pct,
  sc.standard_key,
  fo.conc_pct * a.concentration_pct / 100   as contribution_pct,
  (a.value_needs_review or sc.standard_key is null) as needs_review  -- 値が読めない/どの基準にも結びつかない
from public.formula_oil_concentrations fo
join public.oil_annex_links l
  on l.oil_id = fo.oil_id and l.match_type in ('exact', 'approx')
join public.ifra_annex_constituents a
  on a.amendment = l.amendment and a.ncs_name = l.ncs_name
 and a.iso_category is not distinct from l.iso_category
left join public.ifra_standard_cas sc
  on sc.amendment = a.amendment and sc.cas = a.constituent_cas
union all
select
  fo.formula_id,
  s.amendment,
  'oil',
  fo.oil_id,
  fo.oil_name,
  fo.conc_pct,
  null, null, null,
  s.note,
  null, null, null,
  s.standard_key,
  fo.conc_pct,
  false
from public.formula_oil_concentrations fo
join public.oil_standard_links s on s.oil_id = fo.oil_id;

-- 4. 確認の結果(1行 = 処方の中の、確かめる対象1つ)-----------------------
-- item_type
--   standard    基準(成分、または原料そのもの)ごとの合計を、11B の上限と比べたもの
--   sum_group   足し算で見るグループ(柑橘のフロクマリン)。グループの精油を2つ以上使っているときだけ出す
--               (1つだけのときは、その精油の基準の行と同じ結果になるため)
--   oil         未確認の精油(Annex との結びつきが未設定/Annex になし/結びつけた Annex の精油が見つからない)
--   annex_value Annex の値が読めない・どの基準にも結びつかない成分(例外表で pending のもの)
-- level(段階)
--   red          使用禁止の基準にあたる
--   yellow       上限を超えている(上限との比が 1 より大きい)
--   near         上限に近い(上限との比が 0.8 以上、1 以下)
--   ok           上限の 0.8 倍より小さい/制限なし
--   unconfirmed  未確認の精油(規制成分を確かめられていない)
--   needs_review 基準の本文や Annex の値を、人が確かめる必要がある
-- 【注意】カテゴリ 11B(ピローミスト)専用。ほかのカテゴリの製品は、結果を出さない
create view public.formula_check_items
with (security_invoker = true) as
with std as (
  select
    c.formula_id,
    c.amendment,
    c.standard_key,
    sum(c.contribution_pct)                       as total_pct,
    coalesce(bool_or(c.match_type = 'approx'), false) as has_approx,
    jsonb_agg(jsonb_build_object(
      'oil_id',           c.oil_id,
      'oil_name',         c.oil_name,
      'oil_conc_pct',     c.oil_conc_pct,
      'source',           c.source,
      'match_type',       c.match_type,
      'ncs_name',         c.ncs_name,
      'iso_category',     c.iso_category,
      'match_reason',     c.match_reason,
      'constituent_name', c.constituent_name,
      'annex_pct',        c.annex_pct,
      'contribution_pct', c.contribution_pct
    ) order by c.contribution_pct desc, c.oil_name) as contributors
  from public.formula_check_contributions c
  where c.standard_key is not null and c.contribution_pct is not null
  group by c.formula_id, c.amendment, c.standard_key
),
std_limit as (
  select
    std.*,
    e.standard_name,
    e.intrinsic_property,
    e.effective_kind,
    e.effective_pct,
    e.still_needs_review,
    e.treatment,
    case when e.effective_kind = 'limit' and e.effective_pct > 0
         then std.total_pct / e.effective_pct end as ratio
  from std
  join public.ifra_limits_11b_effective e
    on e.amendment = std.amendment and e.standard_key = std.standard_key
),
items as (
  -- (1) 基準ごと
  select
    formula_id, amendment,
    'standard'::text                as item_type,
    standard_key                    as item_key,
    standard_name                   as item_name,
    intrinsic_property,
    total_pct,
    case when effective_kind = 'limit' then effective_pct end as limit_pct,
    ratio,
    case
      when still_needs_review
        or effective_kind in ('see_notebox', 'annotated', 'sum_group') then 'needs_review'
      when effective_kind = 'prohibited'                              then 'red'
      when effective_kind = 'limit' and effective_pct = 0             then 'red'
      when effective_kind = 'limit' and ratio > 1                     then 'yellow'
      when effective_kind = 'limit' and ratio >= 0.8                  then 'near'
      else 'ok'
    end                             as level,
    has_approx,
    contributors,
    treatment                       as note
  from std_limit

  union all
  -- (2) 足し算で見るグループ:「使用量 ÷ 上限」の合計が 1(=100%)を超えないか
  select
    s.formula_id, s.amendment,
    'sum_group',
    g.group_key,
    g.group_name,
    null,
    null,
    null,
    sum(s.ratio),
    case when sum(s.ratio) > 1 then 'yellow' when sum(s.ratio) >= 0.8 then 'near' else 'ok' end,
    bool_or(s.has_approx),
    jsonb_agg(jsonb_build_object(
      'standard_key',  s.standard_key,
      'standard_name', s.standard_name,
      'total_pct',     s.total_pct,
      'limit_pct',     s.effective_pct,
      'ratio',         s.ratio
    ) order by s.ratio desc),
    '出典:' || min(g.source)
  from std_limit s
  join public.ifra_sum_groups g
    on g.amendment = s.amendment and g.standard_key = s.standard_key
  where s.ratio is not null
  group by s.formula_id, s.amendment, g.group_key, g.group_name
  having count(*) >= 2

  union all
  -- (3) 未確認の精油
  select
    fo.formula_id, am.amendment,
    'oil',
    fo.oil_id::text,
    fo.oil_name,
    null,
    fo.conc_pct,
    null,
    null,
    'unconfirmed',
    false,
    jsonb_build_array(jsonb_build_object(
      'oil_id', fo.oil_id, 'oil_name', fo.oil_name,
      'oil_conc_pct', fo.conc_pct, 'oil_share', fo.oil_share)),
    case
      when l.oil_id is null        then 'Annex との結びつきが未設定'
      when l.match_type = 'none'   then 'Annex になし' || coalesce('(' || l.reason || ')', '')
      else '結びつけた Annex の精油(' || l.ncs_name || ')が、この改正の Annex に見つからない'
    end
  from public.formula_oil_concentrations fo
  cross join public.ifra_amendments am
  left join public.oil_annex_links l
    on l.oil_id = fo.oil_id and l.amendment = am.amendment
  where l.oil_id is null
     or l.match_type = 'none'
     or not exists (
          select 1 from public.ifra_annex_constituents a
          where a.amendment = l.amendment and a.ncs_name = l.ncs_name
            and a.iso_category is not distinct from l.iso_category)

  union all
  -- (4) Annex の値を人が確かめる必要がある成分
  select
    c.formula_id, c.amendment,
    'annex_value',
    c.oil_id::text || ':' || c.constituent_cas,
    c.constituent_name,
    null,
    null,
    null,
    null,
    'needs_review',
    c.match_type = 'approx',
    jsonb_build_array(jsonb_build_object(
      'oil_id', c.oil_id, 'oil_name', c.oil_name, 'oil_conc_pct', c.oil_conc_pct,
      'match_type', c.match_type, 'ncs_name', c.ncs_name, 'iso_category', c.iso_category,
      'constituent_name', c.constituent_name, 'annex_pct', c.annex_pct)),
    case when c.standard_key is null
         then 'この成分(CAS ' || c.constituent_cas || ')が、どの基準にも結びついていない'
         else 'Annex の含有率の値が読めない' end
  from public.formula_check_contributions c
  where c.source = 'annex' and c.needs_review
)
select
  i.*,
  case i.level
    when 'red' then 1 when 'yellow' then 2 when 'near' then 3
    when 'unconfirmed' then 4 when 'needs_review' then 5 else 9
  end as level_order
from items i
join public.formulas f on f.id = i.formula_id
join public.products p on p.product_key = f.product_key
where p.ifra_category = '11B';

-- 5. 判断の記録(R12)------------------------------------------------------
-- 赤・黄・上限に近い について、ひろみが決めたことと理由。上書きせず、足していく(最新の1件を使う)
create table public.formula_judgments (
  id                 bigint generated always as identity primary key,
  formula_id         text not null references public.formulas on delete cascade,
  amendment          int  not null references public.ifra_amendments,
  item_type          text not null check (item_type in ('standard', 'sum_group')),
  item_key           text not null,               -- 基準のキー(例:IFRA_STD_067)、またはグループのキー
  item_name          text not null,               -- 判断したときの名前(あとで読むため)
  decision           text not null check (decision in (
                       'accept',  -- 意図して超える(このまま販売する)
                       'change',  -- 処方を変える
                       'hold'     -- 保留(まだ決めていない)
                     )),
  reason             text,
  level_at_decision  text not null,               -- 判断したときの段階と数字(あとで値が変わったことに気づくため)
  ratio_at_decision  numeric,
  total_pct_at_decision numeric,
  limit_pct_at_decision numeric,
  decided_at         timestamptz not null default now(),
  check (decision <> 'accept' or nullif(btrim(reason), '') is not null)  -- 意図して超えるときは、理由が要る
);
create index on public.formula_judgments (formula_id, amendment, item_type, item_key, decided_at desc);

-- 6. 確認の結果に、最新の判断を重ねたもの(画面はこれを読む)-----------------
-- judgment_state
--   none       判断がいらない(ok)
--   fix        判断ではなく、直す・確かめるもの(未確認の精油、本文の確認)
--   undecided  まだ判断していない
--   changed    判断したあとで、上限との比が上がった・段階が変わった(もう一度見る)
--   hold       保留
--   change     処方を変える、と決めた
--   accepted   意図して超える、と記録済み(次から目立たなくする)
create view public.formula_check_board
with (security_invoker = true) as
select
  i.*,
  j.id          as judgment_id,
  j.decision,
  j.reason      as judgment_reason,
  j.decided_at,
  j.ratio_at_decision,
  case
    when i.level = 'ok'                              then 'none'
    when i.level in ('unconfirmed', 'needs_review')  then 'fix'
    when j.id is null                                then 'undecided'
    when j.level_at_decision <> i.level
      or round(coalesce(i.ratio, 0), 4) > round(coalesce(j.ratio_at_decision, 0), 4) then 'changed'
    when j.decision = 'hold'                         then 'hold'
    when j.decision = 'change'                       then 'change'
    else 'accepted'
  end           as judgment_state
from public.formula_check_items i
left join lateral (
  select * from public.formula_judgments j
  where j.formula_id = i.formula_id and j.amendment = i.amendment
    and j.item_type = i.item_type and j.item_key = i.item_key
  order by j.decided_at desc, j.id desc
  limit 1
) j on true;

-- 7. 確認の記録(「この結果を見た」というスナップショット)------------------
-- 計算はいつも最新のデータで行うが、「いつ・どの改正で・どんな結果を見たか」を残しておく。
-- あとで精油の結びつきや IFRA の改正が変わったときに、前の結果と比べられる
create table public.formula_checks (
  id              bigint generated always as identity primary key,
  formula_id      text not null references public.formulas on delete cascade,
  amendment       int  not null references public.ifra_amendments,
  checked_at      timestamptz not null default now(),
  n_red           int not null,
  n_yellow        int not null,
  n_near          int not null,
  n_unconfirmed   int not null,
  n_needs_review  int not null,
  n_undecided     int not null                    -- 判断待ち(undecided・changed・hold)の数
);
create index on public.formula_checks (formula_id, amendment, checked_at desc);

create table public.formula_check_results (
  check_id        bigint not null references public.formula_checks on delete cascade,
  item_type       text not null,
  item_key        text not null,
  item_name       text not null,
  level           text not null,
  total_pct       numeric,
  limit_pct       numeric,
  ratio           numeric,
  has_approx      boolean not null,
  contributors    jsonb,
  judgment_state  text not null,
  decision        text,
  primary key (check_id, item_type, item_key)
);

-- 今の結果を、確認の記録として保存する
create function public.record_formula_check(p_formula_id text, p_amendment int)
returns bigint
language plpgsql
set search_path = ''
as $$
declare
  v_check_id bigint;
begin
  if not exists (select 1 from public.formula_lines l where l.formula_id = p_formula_id) then
    raise exception '処方 % に配合行がありません', p_formula_id;
  end if;

  insert into public.formula_checks
    (formula_id, amendment, n_red, n_yellow, n_near, n_unconfirmed, n_needs_review, n_undecided)
  select
    p_formula_id, p_amendment,
    count(*) filter (where b.level = 'red'),
    count(*) filter (where b.level = 'yellow'),
    count(*) filter (where b.level = 'near'),
    count(*) filter (where b.level = 'unconfirmed'),
    count(*) filter (where b.level = 'needs_review'),
    count(*) filter (where b.judgment_state in ('undecided', 'changed', 'hold'))
  from public.formula_check_board b
  where b.formula_id = p_formula_id and b.amendment = p_amendment
  returning id into v_check_id;

  insert into public.formula_check_results
    (check_id, item_type, item_key, item_name, level, total_pct, limit_pct, ratio,
     has_approx, contributors, judgment_state, decision)
  select v_check_id, b.item_type, b.item_key, b.item_name, b.level, b.total_pct, b.limit_pct, b.ratio,
         b.has_approx, b.contributors, b.judgment_state, b.decision
  from public.formula_check_board b
  where b.formula_id = p_formula_id and b.amendment = p_amendment;

  return v_check_id;
end $$;

-- 8. 処方の一覧用:処方ごとの状態 -------------------------------------------
create view public.formula_status
with (security_invoker = true) as
select
  f.id,
  f.product_key,
  f.fragrance_pct,
  f.completed_on,
  f.memo,
  f.created_at,
  am.amendment,
  (select string_agg(n.sale_name, '、' order by n.sold_from)
     from public.formula_sale_names n
    where n.formula_id = f.id
      and n.sold_from <= current_date
      and (n.sold_until is null or n.sold_until >= current_date))   as current_sale_names,
  (select string_agg(distinct n.sale_name, '、')
     from public.formula_sale_names n where n.formula_id = f.id)    as all_sale_names,
  (select count(*) from public.formula_lines l where l.formula_id = f.id) as line_count,
  coalesce(b.n_red, 0)           as n_red,
  coalesce(b.n_yellow, 0)        as n_yellow,
  coalesce(b.n_near, 0)          as n_near,
  coalesce(b.n_unconfirmed, 0)   as n_unconfirmed,
  coalesce(b.n_needs_review, 0)  as n_needs_review,
  coalesce(b.n_undecided, 0)     as n_undecided,
  (select max(c.checked_at) from public.formula_checks c
    where c.formula_id = f.id and c.amendment = am.amendment)       as last_checked_at
from public.formulas f
cross join public.ifra_amendments am
left join (
  select
    formula_id, amendment,
    count(*) filter (where level = 'red')           as n_red,
    count(*) filter (where level = 'yellow')        as n_yellow,
    count(*) filter (where level = 'near')          as n_near,
    count(*) filter (where level = 'unconfirmed')   as n_unconfirmed,
    count(*) filter (where level = 'needs_review')  as n_needs_review,
    count(*) filter (where judgment_state in ('undecided', 'changed', 'hold')) as n_undecided
  from public.formula_check_board
  group by formula_id, amendment
) b on b.formula_id = f.id and b.amendment = am.amendment;

-- 9. 誰が読める・書けるか(RLS と GRANT の両方)--------------------------
alter table public.formula_judgments      enable row level security;
alter table public.formula_checks         enable row level security;
alter table public.formula_check_results  enable row level security;

-- 判断と確認の記録は「足していく」だけ(直す・消すは画面からはしない。処方を消すと一緒に消える)
create policy "ログインした人は読める" on public.formula_judgments
  for select to authenticated using (true);
create policy "ログインした人は足せる" on public.formula_judgments
  for insert to authenticated with check (true);
create policy "ログインした人は読める" on public.formula_checks
  for select to authenticated using (true);
create policy "ログインした人は足せる" on public.formula_checks
  for insert to authenticated with check (true);
create policy "ログインした人は読める" on public.formula_check_results
  for select to authenticated using (true);
create policy "ログインした人は足せる" on public.formula_check_results
  for insert to authenticated with check (true);

grant select, insert on
  public.formula_judgments,
  public.formula_checks,
  public.formula_check_results
to authenticated;

grant select on
  public.formula_oil_concentrations,
  public.ifra_annex_constituents,
  public.formula_check_contributions,
  public.formula_check_items,
  public.formula_check_board,
  public.formula_status
to authenticated;

revoke execute on function public.record_formula_check(text, int) from public, anon;
grant execute on function public.record_formula_check(text, int) to authenticated;

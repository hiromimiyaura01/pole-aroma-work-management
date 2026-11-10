-- =====================================================================
-- 1. アプリ(ログインした人)が表を使えるようにする権限(GRANT)
-- 2. 精油の「抽出部位」を、複数選べる形(文字の配列)に変える
-- 実行方法:Supabase の SQL Editor に貼って Run(1回だけ)
-- =====================================================================

-- 1. 権限 ----------------------------------------------------------------
-- RLS は「どの行を見せるか」、GRANT は「その表をそもそも使えるか」。両方が要る。
-- (このプロジェクトでは、新しく作った表に自動で権限が付かなかった)

-- IFRA のデータ:読むだけ(例外表は更新も)
grant select on
  public.ifra_amendments,
  public.ifra_standards,
  public.ifra_standard_cas,
  public.ifra_limits,
  public.ifra_annex,
  public.ifra_review_items,
  public.ifra_sum_groups,
  public.ifra_annex_11b,
  public.ifra_limits_11b_effective,
  public.ifra_annex_ncs
to authenticated;
grant update on public.ifra_review_items to authenticated;

-- 精油:読む・書く・消す
grant select, insert, update, delete on
  public.essential_oils,
  public.oil_annex_links,
  public.oil_standard_links
to authenticated;
grant select on public.essential_oil_status to authenticated;

-- 2. 抽出部位を複数選べるようにする -------------------------------------
-- 一覧用のビューが列を使っているので、いったん消して作り直す
drop view public.essential_oil_status;

alter table public.essential_oils
  alter column plant_part type text[]
  using case when plant_part is null then null else string_to_array(plant_part, '、') end;

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

grant select on public.essential_oil_status to authenticated;

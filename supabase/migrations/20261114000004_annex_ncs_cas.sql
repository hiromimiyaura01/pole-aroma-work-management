-- =====================================================================
-- Annex の精油を選ぶ画面に、精油そのものの CAS 番号と RIFM の番号を出す
-- 学名も ISO の区分も同じで、名前だけが違う精油がある
--   (例:Mandarin oil と Tangerine oil、Ho bark oil と Camphor oil)。
--   ブランドの成分表・SDS の CAS 番号と突き合わせて、見分ける手がかりにする
-- 実行方法:Supabase の SQL Editor に貼って Run(1回だけ)
-- =====================================================================

-- ビューの最後に列を足す(今ある列はそのまま。権限もそのまま残る)
create or replace view public.ifra_annex_ncs
with (security_invoker = true) as
select
  amendment,
  ncs_name,
  iso_category,
  min(botanical_name)            as botanical_name,
  count(*)                       as constituent_count,
  string_agg(constituent_name || ' ' || coalesce(concentration_pct::text, raw_value, '?') || '%',
             ', ' order by concentration_pct desc nulls last) as constituents,
  string_agg(distinct ncs_cas, '; ')        as ncs_cas,        -- 精油そのものの CAS 番号
  string_agg(distinct ncs_other_cas, '; ')  as ncs_other_cas,  -- そのほかの CAS 番号(Annex の「Other CAS」)
  string_agg(distinct rifm_id, '; ')        as rifm_id         -- RIFM(香料の安全性を評価する研究機関)の番号
from public.ifra_annex
group by amendment, ncs_name, iso_category;

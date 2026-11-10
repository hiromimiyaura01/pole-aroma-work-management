-- =====================================================================
-- 例外表の決定の確認(20261110000001_ifra_review_decisions.sql と
-- ifra_51_3_review_decisions.sql を実行したあとに、全体を貼って1回 Run)
-- 「判定」が全部 OK なら、期待どおり
-- =====================================================================
with checks(番号, 確認すること, 結果, 期待) as (
  select '1', '例外表:決定済み(confirmed)の件数',
         (select count(*)::text from ifra_review_items where amendment = 51 and status = 'confirmed'), '6'
  union all select '2', '例外表:まだ(pending)の件数(Annex の2件)',
         (select count(*)::text from ifra_review_items where amendment = 51 and status = 'pending'), '2'
  union all select '3', '足し算のグループ(furocoumarin)の精油の数',
         (select count(*)::text from ifra_sum_groups where amendment = 51 and group_key = 'furocoumarin'), '8'
  union all select '4', '11B で、まだ人の確認が必要な上限の数',
         (select count(*)::text from ifra_limits_11b_effective where amendment = 51 and still_needs_review), '0'
  union all select '5-' || k, '11B の使う上限:' || n,
         (select effective_kind || ' ' || coalesce(effective_pct::text, '-')
            from ifra_limits_11b_effective where amendment = 51 and standard_key = k), e
  from (values ('IFRA_STD_110', 'Asarone',           'limit 0.01'),
               ('IFRA_STD_112', 'Benzyl cyanide',    'limit 0.01'),
               ('IFRA_STD_154', 'Isophorone',        'limit 0.0013'),
               ('IFRA_STD_158', '7-Methoxycoumarin', 'limit 0.01'),
               ('IFRA_STD_179', 'Safrole 類',        'limit 0.01'),
               ('IFRA_STD_089', '柑橘のフロクマリン', 'sum_group -'),
               ('IFRA_STD_067', 'オークモス(変わらない)', 'limit 0.1')) as t(k, n, e)
)
select 番号, 確認すること, 結果, 期待,
       case when 結果 = 期待 then 'OK' else '★要確認' end as 判定
from checks
order by 番号;

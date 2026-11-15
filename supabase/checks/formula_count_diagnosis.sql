-- =====================================================================
-- 処方の一覧のラベルの数(黄・上限に近い など)がおかしいときに、原因を探す SQL(読むだけ)
-- 期待:どの処方も「結果の行数」と「重なりを除いた行数」が同じ
--   違っていたら、確認の結果に同じ対象が2回以上出ている(=数が水増しされている)
-- 「確認の記録の回数」「判断の記録の回数」は、ボタンを押した回数。ラベルの数とは関係しないのが正しい
-- =====================================================================
select
  s.id                                            as 処方,
  s.all_sale_names                                as 販売名,
  s.n_yellow                                      as 黄,
  s.n_near                                        as 上限に近い,
  s.n_unconfirmed                                 as 未確認の精油,
  s.n_undecided                                   as 判断待ち,
  (select count(*) from public.formula_check_items i
    where i.formula_id = s.id and i.amendment = s.amendment)          as 結果の行数,
  (select count(distinct (i.item_type, i.item_key)) from public.formula_check_items i
    where i.formula_id = s.id and i.amendment = s.amendment)          as 重なりを除いた行数,
  (select count(*) from public.formula_checks c
    where c.formula_id = s.id and c.amendment = s.amendment)          as 確認の記録の回数,
  (select count(*) from public.formula_judgments j
    where j.formula_id = s.id and j.amendment = s.amendment)          as 判断の記録の回数
from public.formula_status s
where s.amendment = 51
order by s.id;

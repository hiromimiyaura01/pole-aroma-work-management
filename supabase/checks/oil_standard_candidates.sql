-- =====================================================================
-- 登録した精油のうち、「原料そのものの基準」の候補があるものを探す(読むだけ)
-- 見つけ方:結びつけた Annex の精油の CAS 番号が、IFRA の基準の CAS 番号と同じ
-- 「結びつけ」の列が「★まだ」のものを、精油の画面の「② 原料そのものの基準」で確かめる
-- 【注意】CAS 番号が同じでも、基準の対象とは限らない
--   (例:蒸留のレモンは、基準「Lemon oil cold pressed(圧搾)」と番号が同じ)。
--   基準の名前と、自分の精油の抽出方法を見比べて、ひろみが決める
-- 【注意】Annex に「なし」「未設定」の精油は、この方法では見つからない
-- =====================================================================
select
  o.name                                   as 精油,
  o.extraction_method                      as 抽出方法,
  l.ncs_name || '(' || coalesce(l.iso_category, '-') || ')' as 結びつけた_annex,
  s.name                                   as 基準の候補,
  sc.standard_key                          as 基準のキー,
  case e.effective_kind when 'limit' then e.effective_pct::text || '%'
                        when 'prohibited' then '使用禁止' else e.effective_kind end as "11B の上限",
  case when k.oil_id is null then '★まだ' else '済み' end as 結びつけ
from public.essential_oils o
join public.oil_annex_links l
  on l.oil_id = o.id and l.amendment = 51 and l.match_type in ('exact', 'approx')
join (select distinct amendment, ncs_name, iso_category, ncs_cas from public.ifra_annex) n
  on n.amendment = l.amendment and n.ncs_name = l.ncs_name
 and n.iso_category is not distinct from l.iso_category
join public.ifra_standard_cas sc
  on sc.amendment = n.amendment and sc.cas = n.ncs_cas
join public.ifra_standards s
  on s.amendment = sc.amendment and s.standard_key = sc.standard_key
join public.ifra_limits_11b_effective e
  on e.amendment = sc.amendment and e.standard_key = sc.standard_key
left join public.oil_standard_links k
  on k.oil_id = o.id and k.amendment = sc.amendment and k.standard_key = sc.standard_key
order by (k.oil_id is not null), o.name;

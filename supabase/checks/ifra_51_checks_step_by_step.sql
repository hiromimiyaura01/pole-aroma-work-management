-- =====================================================================
-- IFRA 第51次改正の取り込みの確認【1つずつ版】(①〜⑤を1つずつ選んで Run する)
-- それぞれの「期待する値」と、実行結果が同じかを見る
-- =====================================================================

-- ① 件数 ------------------------------------------------------------------
-- 期待:基準 263 / 上限 4734(263 × 18カテゴリ)/ Annex 1031 / 例外表 8
select
  (select count(*) from ifra_standards     where amendment = 51) as 基準,
  (select count(*) from ifra_limits        where amendment = 51) as 上限,
  (select count(*) from ifra_annex         where amendment = 51) as annex,
  (select count(*) from ifra_review_items  where amendment = 51) as 例外表;

-- ② カテゴリ 11B の上限の種類ごとの件数 -----------------------------------
-- 期待:limit 171 / prohibited 76 / not_applicable 10 / see_notebox 5 / annotated 1
--       (no_restriction は 11B では 0件)
select limit_kind, count(*) as 件数
from ifra_limits
where amendment = 51 and category = '11B'
group by limit_kind
order by 件数 desc;

-- ③ 気になる原料の 11B の上限 --------------------------------------------
-- 期待:オークモス・ツリーモス 0.1 / 圧搾ベルガモット 0.4 / 柑橘のフロクマリン 0.0015(注記つき・要確認)
select s.standard_key, s.name, l.raw_value as 元の値, l.limit_kind, l.limit_pct, l.needs_review
from ifra_limits l
join ifra_standards s using (amendment, standard_key)
where l.amendment = 51 and l.category = '11B'
  and l.standard_key in ('IFRA_STD_067', 'IFRA_STD_080', 'IFRA_STD_087', 'IFRA_STD_089')
order by s.standard_key;

-- ④ 事前検証(V2)で使った成分の例:Annex の含有率と 11B の上限 ----------
-- 期待:Tea tree oil × Methyl eugenol 0.05 / Olibanum oil × beta-Thujone 0.4
select ncs_name, botanical_name, constituent_name, concentration_pct, standard_key, limit_kind, limit_pct_11b
from ifra_annex_11b
where amendment = 51
  and (ncs_name ilike 'Tea tree oil%' and constituent_name ilike 'Methyl eugenol%'
    or ncs_name ilike 'Olibanum oil%' and constituent_name ilike '%Thujone%')
order by ncs_name;

-- ⑤ 例外表(人が確認する項目)--------------------------------------------
-- 期待:11B の6件(See Notebox 5件+柑橘の 5-MOP 1件)と、Annex の不具合2件
select id, item_type, ref, raw_value, status
from ifra_review_items
where amendment = 51
order by id;

-- =====================================================================
-- IFRA 第51次改正の取り込みの確認(取り込んだあとに SQL Editor で実行)
-- 全体を貼って1回 Run するだけでよい。
-- 1行が1つの確認。「判定」が全部 OK なら、期待どおりに取り込めている。
-- =====================================================================
with checks(番号, 確認すること, 結果, 期待) as (
  -- ① 件数
  select '①-1', '基準の件数',
         (select count(*)::text from ifra_standards where amendment = 51), '263'
  union all select '①-2', '上限の件数(263 × 18カテゴリ)',
         (select count(*)::text from ifra_limits where amendment = 51), '4734'
  union all select '①-3', 'Annex の行数',
         (select count(*)::text from ifra_annex where amendment = 51), '1031'
  union all select '①-4', '例外表の件数',
         (select count(*)::text from ifra_review_items where amendment = 51), '8'

  -- ② カテゴリ 11B の上限の種類ごとの件数
  union all select '②-' || k, '11B の上限の種類:' || k,
         (select count(*)::text from ifra_limits
           where amendment = 51 and category = '11B' and limit_kind = k), e
  from (values ('limit', '171'), ('prohibited', '76'), ('not_applicable', '10'),
               ('see_notebox', '5'), ('annotated', '1'), ('no_restriction', '0')) as t(k, e)

  -- ③ 気になる原料の 11B の上限
  union all select '③-' || k, '11B の上限:' || n,
         (select limit_kind || ' ' || coalesce(limit_pct::text, '-') from ifra_limits
           where amendment = 51 and category = '11B' and standard_key = k), e
  from (values ('IFRA_STD_067', 'オークモス',             'limit 0.1'),
               ('IFRA_STD_080', 'ツリーモス',             'limit 0.1'),
               ('IFRA_STD_087', '圧搾ベルガモット',       'limit 0.4'),
               ('IFRA_STD_089', '柑橘のフロクマリン(5-MOP)', 'annotated 0.0015'),
               ('IFRA_STD_100', 'メチルオイゲノール',     'limit 0.000069'),
               ('IFRA_STD_102', 'ツヨン',                 'limit 0.0053')) as t(k, n, e)

  -- ④ 事前検証(V2)で使った精油 × 成分の Annex の含有率
  union all select '④-1', 'Annex:Tea tree oil × Methyl eugenol(%)',
         (select string_agg(concentration_pct::text, ', ') from ifra_annex
           where amendment = 51 and ncs_name = 'Tea tree oil' and constituent_name = 'Methyl eugenol'), '0.05'
  union all select '④-2', 'Annex:Olibanum oil × beta-Thujone(%)',
         (select string_agg(concentration_pct::text, ', ') from ifra_annex
           where amendment = 51 and ncs_name = 'Olibanum oil' and constituent_name = 'beta-Thujone'), '0.4'

  -- ⑤ 例外表の中身
  union all select '⑤-1', '例外表:11B の上限(See Notebox 5件+5-MOP 1件)',
         (select count(*)::text from ifra_review_items where amendment = 51 and item_type = 'limit' and category = '11B'), '6'
  union all select '⑤-2', '例外表:Annex の値・結びつき',
         (select count(*)::text from ifra_review_items where amendment = 51 and item_type in ('annex_value', 'annex_mapping')), '2'
  union all select '⑤-3', '例外表:まだ確認していない(pending)※取り込み直後の値。例外表を決めたあとは 2',
         (select count(*)::text from ifra_review_items where amendment = 51 and status = 'pending'), '8'
)
select 番号, 確認すること, 結果, 期待,
       case when 結果 = 期待 then 'OK' else '★要確認' end as 判定
from checks
order by 番号;

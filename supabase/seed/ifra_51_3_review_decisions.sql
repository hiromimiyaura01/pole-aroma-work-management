-- IFRA 第51次改正:例外表(カテゴリ 11B)の6件の決定
-- 2026-11-10 ひろみが IFRA の基準の PDF(Note box)を確認して決定。
-- 法的な判断ではなく、確認を補助するための扱い。最終判断は事業者が行う。

begin;

-- 1. 「成分そのものは禁止、天然原料から入る分は完成品中 ◯% まで」の5件
update public.ifra_review_items set
  status = 'confirmed',
  treated_pct = v.pct,
  treatment = v.treatment,
  source = v.source,
  checked_on = date '2026-11-10',
  note = '成分そのもの(単体の香料)は使用禁止。その成分を得る代わりとして天然原料を使うのも不可。精油などから入る分は上限まで認められる。'
from (values
  ('IFRA_STD_110', 0.01,   '天然原料に含まれる cis- と trans-Asarone の合計を、完成品中 0.01%(100 ppm)の上限で扱う', 'IFRA Standard「cis-and trans-Asarone」Amendment 40(2006)Note box'),
  ('IFRA_STD_112', 0.01,   '天然原料に含まれる Benzyl cyanide を、完成品中 0.01%(100 ppm)の上限で扱う',             'IFRA Standard「Benzyl cyanide」Amendment 38(2004)Note box'),
  ('IFRA_STD_154', 0.0013, '天然原料に含まれる Isophorone を、完成品中 0.0013% の上限で扱う',                       'IFRA Standard「Isophorone」Amendment 49(2020)Note box'),
  ('IFRA_STD_158', 0.01,   '天然原料に含まれる 7-Methoxycoumarin を、完成品中 0.01%(100 ppm)の上限で扱う',         'IFRA Standard「7-Methoxycoumarin」Amendment 43(2008)Note box'),
  ('IFRA_STD_179', 0.01,   '天然原料に含まれる Safrole・Isosafrole・Dihydrosafrole の合計を、完成品中 0.01% の上限で扱う', 'IFRA Standard「Safrole, Isosafrole and Dihydrosafrole」Amendment 17(1987)Note box')
) as v(standard_key, pct, treatment, source)
where ifra_review_items.amendment = 51
  and ifra_review_items.item_type = 'limit'
  and ifra_review_items.category = '11B'
  and ifra_review_items.standard_key = v.standard_key;

-- 2. 柑橘のフロクマリン(5-MOP)
update public.ifra_review_items set
  status = 'confirmed',
  treated_pct = null,
  treatment = '5-MOP(ベルガプテン)の量は使わない(実測値がないため)。グループ「furocoumarin」の精油ごとの基準を使い、「使用量 ÷ 上限」の合計が 100% を超えないかを見る',
  source = 'IFRA Standard「Citrus oils and other furocoumarins containing essential oils」Amendment 49(2020)Note box',
  checked_on = date '2026-11-10',
  note = '5-MOP の量が測られている場合の上限は完成品中 0.0015%(15 ppm)。少量の 5-MOP を含む精油(プチグレンマンダリン 50 ppm、コールドプレスのタンジェリン 50 ppm、パセリリーフ 20 ppm)は、単独なら特別な制限は不要だが、グループの精油と一緒に使うときは注意する。'
where amendment = 51 and item_type = 'limit' and category = '11B' and standard_key = 'IFRA_STD_089';

-- 3. 足し算で見るグループ(IFRA_STD_089 の本文に挙げられた8つの精油)
insert into public.ifra_sum_groups (amendment, group_key, group_name, standard_key, source) values
  (51, 'furocoumarin', '光毒性のフロクマリンを含む精油', 'IFRA_STD_086', 'IFRA_STD_089 Note box'),  -- Angelica root oil
  (51, 'furocoumarin', '光毒性のフロクマリンを含む精油', 'IFRA_STD_087', 'IFRA_STD_089 Note box'),  -- Bergamot oil expressed
  (51, 'furocoumarin', '光毒性のフロクマリンを含む精油', 'IFRA_STD_088', 'IFRA_STD_089 Note box'),  -- Bitter orange peel oil expressed
  (51, 'furocoumarin', '光毒性のフロクマリンを含む精油', 'IFRA_STD_090', 'IFRA_STD_089 Note box'),  -- Cumin oil
  (51, 'furocoumarin', '光毒性のフロクマリンを含む精油', 'IFRA_STD_091', 'IFRA_STD_089 Note box'),  -- Grapefruit oil expressed
  (51, 'furocoumarin', '光毒性のフロクマリンを含む精油', 'IFRA_STD_092', 'IFRA_STD_089 Note box'),  -- Lemon oil cold pressed
  (51, 'furocoumarin', '光毒性のフロクマリンを含む精油', 'IFRA_STD_093', 'IFRA_STD_089 Note box'),  -- Lime oil expressed
  (51, 'furocoumarin', '光毒性のフロクマリンを含む精油', 'IFRA_STD_096', 'IFRA_STD_089 Note box');  -- Rue oil

commit;

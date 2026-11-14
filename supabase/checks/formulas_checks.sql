-- =====================================================================
-- 処方の表と、確認の計算(R10〜R12)の確認用 SQL(読むだけ。データは変えない)
-- 使い方:①〜③を1つずつ選んで Run し、「期待」と見比べる
--   (SQL Editor は、いくつかの SQL を一度に実行すると、最後の1つの結果しか表示しない)
-- =====================================================================

-- ① 表・ビューができていて、ログインした人が使えるか -------------------------
-- 期待:16行。「判定」が全部 OK
--   表(種類 = 表)は「RLS」が true、ビューは RLS の欄が false でよい
select
  t.name                                                        as 名前,
  case c.relkind when 'r' then '表' when 'v' then 'ビュー' when 'S' then '連番' end as 種類,
  c.relrowsecurity                                              as "RLS",
  case
    when c.oid is null then '★ない'
    when c.relkind = 'S' then
      case when has_sequence_privilege('authenticated', c.oid, 'usage') then 'OK' else '★権限なし' end
    when c.relkind = 'r' and not c.relrowsecurity then '★RLS なし'
    when not has_table_privilege('authenticated', c.oid, 'select') then '★読めない'
    when t.writable and not has_table_privilege('authenticated', c.oid, 'insert') then '★書けない'
    else 'OK'
  end                                                           as 判定
from (values
  ('products', false), ('formulas', true), ('formula_lines', true), ('formula_sale_names', true),
  ('formula_judgments', true), ('formula_checks', true), ('formula_check_results', true),
  ('formula_id_seq', false),
  ('formula_line_concentrations', false), ('formula_oil_concentrations', false),
  ('ifra_annex_constituents', false), ('formula_check_contributions', false),
  ('formula_check_items', false), ('formula_check_board', false), ('formula_status', false),
  ('essential_oils', true)
) as t(name, writable)
left join pg_class c
  on c.relname = t.name and c.relnamespace = 'public'::regnamespace
order by 2, 1;

-- ② Annex の「同じ行が2回」をまとめられているか -----------------------------
-- 期待:1行だけ。Lavandin concrete / alpha-Bisabolol / 1.91 / 元の行数 2
--   (Annex の Excel に同じ行が2回入っている。そのまま足すと2倍に数えてしまう)
select ncs_name, constituent_name, concentration_pct, source_rows as 元の行数
from public.ifra_annex_constituents
where amendment = 51 and source_rows > 1;

-- ③ 答え合わせ:処方を画面から登録したあとに実行する --------------------------
-- 事前検証(docs/05_validation-results.md の V2)で手計算した結果と見比べる。
-- 期待(賦香率 10% のとき。販売名は登録したものに読みかえる):
--   INNOCENT:黄 Methyl eugenol 約7.3倍/上限に近い Thujone 約0.94倍/未確認の精油 1/近似 2
--   GRACE   :黄 p-Cresol 約1.03倍/上限に近い Isoeugenol 約0.86倍・Thujone 約0.94倍/近似 2
--             Benzyl cyanide は、例外表の決定(上限 0.01%)で数値として出る(事前検証のときは「本文の確認が必要」)
--   HOPE    :黄 Bergamot oil expressed 約3.75倍・Methyl eugenol 約3.6倍・Thujone 約1.4倍/近似 2
-- 手計算と違うところがあれば、どちらが正しいかを一緒に確かめる(手計算が間違っていることもある)
select
  s.id                                   as 処方,
  s.all_sale_names                       as 販売名,
  case i.level when 'red' then '赤' when 'yellow' then '黄' when 'near' then '上限に近い'
               when 'unconfirmed' then '未確認の精油' when 'needs_review' then '確認が必要' end as 段階,
  i.item_name                            as 対象,
  round(i.total_pct, 6)                  as "完成品中(%)",
  i.limit_pct                            as "11B の上限(%)",
  round(i.ratio, 2)                      as 上限との比,
  i.has_approx                           as 近似を含む,
  i.note                                 as 補足
from public.formula_status s
join public.formula_check_items i
  on i.formula_id = s.id and i.amendment = s.amendment
where s.amendment = 51 and i.level <> 'ok'
order by s.id, i.level_order, i.ratio desc nulls last;

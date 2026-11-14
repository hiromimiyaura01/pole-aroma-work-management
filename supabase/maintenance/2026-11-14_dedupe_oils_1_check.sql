-- =====================================================================
-- 連打で二重に登録された精油の片付け(2026-11-14)①確認:消える予定の行を見るだけ。何も消さない
-- 「名前・学名・種類・抽出部位・抽出方法・ブランド・メモ」がすべて同じものを、重複とみなす。
-- 残すのは1件:IFRA との結びつきがあるものを優先し、なければいちばん古いもの。
-- 消すのは、IFRA との結びつきがないものだけ。
--
-- =====================================================================

-- ① 確認:消える予定の精油(消すかどうか=「消す」の行が消える)
with ranked as (
  select
    o.id, o.name, o.created_at,
    exists (select 1 from oil_annex_links a where a.oil_id = o.id)
      or exists (select 1 from oil_standard_links s where s.oil_id = o.id) as has_links,
    row_number() over (
      partition by o.name, o.botanical_name, o.kind, o.plant_part, o.extraction_method, o.brand, o.memo
      order by
        (exists (select 1 from oil_annex_links a where a.oil_id = o.id)
          or exists (select 1 from oil_standard_links s where s.oil_id = o.id)) desc,
        o.created_at
    ) as rn
  from essential_oils o
)
select name, created_at, has_links,
       case when rn = 1 then '残す' when has_links then '残す(結びつきあり)' else '消す' end as 消すかどうか
from ranked
order by name, rn;

-- =====================================================================
-- 連打で二重に登録された精油の片付け(2026-11-14)②実行:重複を消す。① で確認してから1回だけ
-- 「名前・学名・種類・抽出部位・抽出方法・ブランド・メモ」がすべて同じものを、重複とみなす。
-- 残すのは1件:IFRA との結びつきがあるものを優先し、なければいちばん古いもの。
-- 消すのは、IFRA との結びつきがないものだけ。
--
-- =====================================================================

-- ② 実行:重複を消す
with ranked as (
  select
    o.id,
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
delete from essential_oils
where id in (select id from ranked where rn > 1 and not has_links)
returning name, created_at;

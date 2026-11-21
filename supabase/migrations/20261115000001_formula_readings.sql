-- =====================================================================
-- 写真の読み取り(R1〜R4)の記録と、ノート写真の置き場所
-- 実行方法:Supabase の SQL Editor に貼って Run(1回だけ)
--
-- 流れ
--   1. 画面で写真を選ぶ → 写真を置き場所(Storage の note-photos)に保存
--   2. Claude API が写真を読み、下書き(draft)をこの表に残す
--   3. ひろみが確認画面で直して保存 → 保存した処方の ID と、保存した中身(final_lines)を残す
--   AI の下書きと、人が保存した中身の両方を残すので、
--   あとで「AI の読み取りを人が何行直したか」(R17)と Evals(R16)に使える。
-- =====================================================================

create table public.formula_readings (
  id              uuid primary key default gen_random_uuid(),
  photo_path      text not null,                    -- note-photos の中の場所(例:2026/11/<id>.jpg)
  photo_name      text,                             -- 元のファイル名(見分けるため)
  status          text not null default 'reading'
                    check (status in ('reading', 'read', 'failed', 'saved', 'discarded')),
                    -- reading=読み取り中/read=下書きあり/failed=読み取れなかった/saved=処方として保存/discarded=使わない
  model           text,                             -- 使ったモデル(Evals で比べるため)
  prompt_version  text,                             -- 指示文の版(指示文を変えたら上げる)
  draft           jsonb,                            -- AI の読み取り結果(そのまま残す。直さない)
  error           text,                             -- 読み取れなかったときの理由
  input_tokens    int,
  output_tokens   int,
  duration_ms     int,                              -- Claude API の応答にかかった時間
  picked_index    int,                              -- 見開きで処方が2つ以上あったとき、どれを保存したか(0始まり)
  saved_formula_id text references public.formulas on delete set null,
  final_lines     jsonb,                            -- 保存したときの配合行(人が直したあと)
  created_at      timestamptz not null default now(),  -- 写真を上げた時刻(記録にかかった時間の始まり)
  read_at         timestamptz,                      -- 下書きができた時刻
  saved_at        timestamptz                       -- 保存した時刻(記録にかかった時間の終わり)
);

create index formula_readings_created_at on public.formula_readings (created_at desc);

-- 権限:ログインした人(ひろみ)だけ。RLS と GRANT の両方を付ける
alter table public.formula_readings enable row level security;
create policy "ログインした人は全部できる" on public.formula_readings
  for all to authenticated using (true) with check (true);
grant select, insert, update, delete on public.formula_readings to authenticated;

-- ---------------------------------------------------------------------
-- ノート写真の置き場所(非公開)
-- 公開しない(public = false)。見るときは、期限つきの URL を毎回作る
-- ---------------------------------------------------------------------
insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('note-photos', 'note-photos', false, 10485760, array['image/jpeg', 'image/png', 'image/webp'])
on conflict (id) do nothing;

create policy "ログインした人はノート写真を見られる" on storage.objects
  for select to authenticated using (bucket_id = 'note-photos');
create policy "ログインした人はノート写真を上げられる" on storage.objects
  for insert to authenticated with check (bucket_id = 'note-photos');
create policy "ログインした人はノート写真を消せる" on storage.objects
  for delete to authenticated using (bucket_id = 'note-photos');

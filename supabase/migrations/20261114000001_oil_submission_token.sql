-- =====================================================================
-- 精油の二重登録を防ぐ(冪等性)
-- 入力画面を開くたびに「この1回の登録の番号」(submission_token)を作り、登録と一緒に保存する。
-- 同じ番号は1件しか入らないので、ボタンを連打しても1件だけになる。
-- 実行方法:Supabase の SQL Editor に貼って Run(1回だけ)
-- =====================================================================

alter table public.essential_oils add column submission_token uuid;

-- 同じ番号は1件だけ(空のものは何件あってもよい)
create unique index essential_oils_submission_token_key
  on public.essential_oils (submission_token);

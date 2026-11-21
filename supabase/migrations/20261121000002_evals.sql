-- =====================================================================
-- Evals(R16):写真の読み取りの精度を、決まった方法で採点し続ける
-- 実行方法:Supabase の SQL Editor に貼って Run(1回だけ)
--
-- 正解データ(2026-11-21 決定):確認画面で直して保存した処方(formula_readings の final_lines)
--   - 保存のときに処方を調整した(ノートと違う数字にした)ものは、eval_excluded で正解から外す
-- 採点(AI に採点させない:08):保存済みの写真を、選んだモデルでもう一度読ませ、配合行ごとに
--   数字が合っているか/グループが合っているか/行の抜け・余分 を数える(数えるのはアプリの計算)
-- 見る数字:一致率(K8)と、1枚あたりの費用・時間(K9)。下のビュー eval_run_summary で集計する
-- =====================================================================

-- 正解から外す印(保存のときに処方を調整したもの など)
alter table public.formula_readings
  add column eval_excluded boolean not null default false,
  add column eval_note     text;                    -- 外した理由など

-- 採点1回(モデル × 指示文の版 × 思考の深さ)
create table public.eval_runs (
  id              uuid primary key default gen_random_uuid(),
  batch_id        uuid not null,                    -- 同じボタンで一緒に始めた採点(モデルを比べるとき、同じ組になる)
  model           text not null,
  prompt_version  text not null,
  effort          text not null,
  n_cases         int not null,                     -- 採点する予定の写真の数
  created_at      timestamptz not null default now()
);
create index eval_runs_created_at on public.eval_runs (created_at desc);

-- 写真1枚ごとの採点結果
create table public.eval_results (
  id              bigint generated always as identity primary key,
  run_id          uuid not null references public.eval_runs on delete cascade,
  reading_id      uuid not null references public.formula_readings on delete cascade,
  status          text not null check (status in ('ok', 'failed')),
  error           text,
  served_model    text,                             -- 実際に答えたモデル(断られて別のモデルに回ったときに違う)
  draft           jsonb,                            -- このときの AI の読み取り結果
  duration_ms     int,
  input_tokens    int,
  output_tokens   int,
  cost_usd        numeric,                          -- 料金表から計算した費用(ドル)
  -- 採点(配合行ごと)
  n_expected      int,                              -- 正解の行の数
  n_matched       int,                              -- 正解の行と結びついた、読み取りの行の数
  n_amount_ok     int,                              -- そのうち、数字が合っていた行
  n_group_total   int,                              -- 正解にグループがある行の数
  n_group_ok      int,                              -- そのうち、グループが合っていた行
  n_missing       int,                              -- 正解にあるのに読み取れなかった行
  n_extra         int,                              -- 読み取ったが、正解にない行(人が消した行。かっこの外のメモなど)
  details         jsonb,                            -- 行ごとの見比べ(画面で、どこが違ったかを見るため)
  created_at      timestamptz not null default now(),
  unique (run_id, reading_id)
);

-- 採点1回ごとのまとめ(画面と Looker Studio はこれを読む)
create view public.eval_run_summary
with (security_invoker = true) as
select
  r.id                as run_id,
  r.batch_id,
  r.created_at,
  r.model,
  r.prompt_version,
  r.effort,
  r.n_cases,
  count(x.id)                                         as n_done,
  count(x.id) filter (where x.status = 'failed')      as n_failed,
  sum(x.n_expected)                                   as n_expected,
  sum(x.n_amount_ok)                                  as n_amount_ok,
  sum(x.n_group_ok)                                   as n_group_ok,
  sum(x.n_group_total)                                as n_group_total,
  sum(x.n_missing)                                    as n_missing,
  sum(x.n_extra)                                      as n_extra,
  -- 一致率(K8):正解の行のうち、数字まで合っていた行の割合
  round(sum(x.n_amount_ok)::numeric / nullif(sum(x.n_expected), 0), 4)    as amount_accuracy,
  round(sum(x.n_group_ok)::numeric / nullif(sum(x.n_group_total), 0), 4)  as group_accuracy,
  -- 費用と時間(K9):1枚あたり
  round(avg(x.duration_ms) filter (where x.status = 'ok'))                 as avg_duration_ms,
  round(sum(x.cost_usd) / nullif(count(x.id) filter (where x.status = 'ok'), 0), 5) as avg_cost_usd
from public.eval_runs r
left join public.eval_results x on x.run_id = r.id
group by r.id;

-- 権限:ログインした人(ひろみ)だけ。RLS と GRANT の両方を付ける
alter table public.eval_runs    enable row level security;
alter table public.eval_results enable row level security;
create policy "ログインした人は全部できる" on public.eval_runs
  for all to authenticated using (true) with check (true);
create policy "ログインした人は全部できる" on public.eval_results
  for all to authenticated using (true) with check (true);
grant select, insert, update, delete on public.eval_runs, public.eval_results to authenticated;
grant select on public.eval_run_summary to authenticated;

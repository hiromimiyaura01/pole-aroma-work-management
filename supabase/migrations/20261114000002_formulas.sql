-- =====================================================================
-- 処方の記録(R3・R4)。確認の計算(R10)の入力になる
-- 実行方法:Supabase の SQL Editor に貼って Run(1回だけ)
-- 処方の配合そのものは、データベースにだけ置く(リポジトリ・チャットには書かない)
-- =====================================================================

-- 1. 製品(=IFRA のカテゴリを決めるもの)---------------------------------
-- 処方は1つの製品に結びつく(2026-11-05 決定)。MVP はピローミスト(11B)だけ
create table public.products (
  product_key    text primary key,                  -- 例:pillow_mist
  name           text not null,                     -- 例:ピローミスト
  ifra_category  text not null,                     -- 例:11B
  source         text                               -- カテゴリを決めた出典
);

insert into public.products (product_key, name, ifra_category, source) values
  ('pillow_mist', 'ピローミスト', '11B',
   'IFRA Guidance(2023-06-30 版)6.5.20、51st Notification Letter 2.3「Pillow spray — Category 11B」');

-- 2. 処方 ----------------------------------------------------------------
-- 不変 ID は「P+5桁の連番」(例:P00042)。保存したときに、次の番号が自動で振られる
-- 同じ販売名のまま処方を変えたときは、新しい ID の処方として登録する(前の処方は消さない)
create sequence public.formula_id_seq;

create table public.formulas (
  id                text primary key
                      default 'P' || lpad(nextval('public.formula_id_seq')::text, 5, '0')
                      check (id ~ '^P[0-9]{5}$'),
  product_key       text not null default 'pillow_mist' references public.products,
  fragrance_pct     numeric not null                -- 賦香率(%)。完成品の重さに対する、精油(原液)の合計の重さ
                      check (fragrance_pct > 0 and fragrance_pct <= 100),
  completed_on      date not null default current_date,  -- 完成版が決まった日
  memo              text,
  submission_token  uuid unique,                    -- 二重登録を防ぐ「この1回の登録の番号」(精油と同じ仕組み)
  created_at        timestamptz not null default now(),
  updated_at        timestamptz not null default now()
);

create trigger formulas_updated_at
  before update on public.formulas
  for each row execute function public.set_updated_at();

-- 3. 配合行(処方の中の1つの精油)-----------------------------------------
create table public.formula_lines (
  id            bigint generated always as identity primary key,
  formula_id    text not null references public.formulas on delete cascade,
  line_no       int  not null,                      -- ノートに書いた順
  oil_id        uuid not null references public.essential_oils on delete restrict,
                                                    -- 処方で使っている精油は、消せない
  amount        numeric not null check (amount > 0),-- ノートの数字(試作時の希釈液の重さの比率。単位はなし)
  dilution_pct  numeric not null default 10         -- 試作時の希釈率(%)。ふつうは 10。違う精油だけ変える
                  check (dilution_pct > 0 and dilution_pct <= 100),
  note_group    text check (note_group in ('top', 'middle', 'base')),  -- ノートのグループ(空でもよい)
  unique (formula_id, line_no)
);
create index on public.formula_lines (oil_id);

-- 4. 販売名の履歴 --------------------------------------------------------
-- 販売名がついた処方 = 販売用(北極星はこれだけで数える)。つかない処方 = 練習
-- 「今販売中」= 販売開始日が今日以前で、販売終了日が空か今日以降
create table public.formula_sale_names (
  id          bigint generated always as identity primary key,
  formula_id  text not null references public.formulas on delete cascade,
  sale_name   text not null,                        -- 例:商品の名前
  sold_from   date not null default current_date,
  sold_until  date,
  check (sold_until is null or sold_until >= sold_from)
);
create index on public.formula_sale_names (formula_id);

-- 5. 配合行ごとの、完成品中の濃度(R10 の最初の一歩)---------------------
-- 原液の比率 = ノートの数字 × 希釈率 を、処方の合計で割ったもの
--   (全部が同じ 10% なら、ノートの数字の比率と同じになる)
-- 完成品中の濃度(%)= 原液の比率 × 賦香率
create view public.formula_line_concentrations
with (security_invoker = true) as
select
  l.formula_id,
  l.id                                              as line_id,
  l.line_no,
  l.oil_id,
  l.amount,
  l.dilution_pct,
  l.note_group,
  f.fragrance_pct,
  l.amount * l.dilution_pct
    / sum(l.amount * l.dilution_pct) over (partition by l.formula_id)            as oil_share,
  l.amount * l.dilution_pct
    / sum(l.amount * l.dilution_pct) over (partition by l.formula_id)
    * f.fragrance_pct                                                            as conc_in_product_pct
from public.formula_lines l
join public.formulas f on f.id = l.formula_id;

-- 6. 処方と配合行を、まとめて保存する関数 ----------------------------------
-- 「処方は入ったのに配合行が入らなかった」という中途半端な状態を作らないため、
-- 1回の呼び出しで全部入るか、全部入らないかのどちらかにする(トランザクション)
--   p_id が空:新しく登録する(不変 ID が自動で振られる)
--             同じ「登録の番号」がすでにあれば、保存せずにその処方の ID を返す(created = false)
--   p_id あり:その処方の賦香率などを直し、配合行を入れ替える
-- p_lines の形:[{"oil_id": "…", "amount": 10, "dilution_pct": 10, "note_group": "top"}, …]
create function public.save_formula(
  p_id                text,
  p_submission_token  uuid,
  p_fragrance_pct     numeric,
  p_completed_on      date,
  p_memo              text,
  p_lines             jsonb
) returns table (saved_id text, created boolean)
language plpgsql
set search_path = ''
as $$
declare
  v_id text;
begin
  if p_lines is null or jsonb_typeof(p_lines) <> 'array' or jsonb_array_length(p_lines) = 0 then
    raise exception '配合行が1行もありません';
  end if;

  if p_id is null then
    insert into public.formulas (fragrance_pct, completed_on, memo, submission_token)
    values (p_fragrance_pct, coalesce(p_completed_on, current_date), p_memo, p_submission_token)
    on conflict (submission_token) do nothing
    returning id into v_id;

    if v_id is null then  -- 同じ登録の番号がすでにある(2回目)。中身は使わない
      select f.id into v_id from public.formulas f where f.submission_token = p_submission_token;
      return query select v_id, false;
      return;
    end if;
  else
    update public.formulas f
       set fragrance_pct = p_fragrance_pct,
           completed_on  = coalesce(p_completed_on, f.completed_on),
           memo          = p_memo
     where f.id = p_id
    returning f.id into v_id;
    if v_id is null then
      raise exception '処方 % が見つかりません', p_id;
    end if;
    delete from public.formula_lines l where l.formula_id = v_id;
  end if;

  insert into public.formula_lines (formula_id, line_no, oil_id, amount, dilution_pct, note_group)
  select v_id,
         t.ord::int,
         (t.line ->> 'oil_id')::uuid,
         (t.line ->> 'amount')::numeric,
         coalesce((t.line ->> 'dilution_pct')::numeric, 10),
         nullif(t.line ->> 'note_group', '')
  from jsonb_array_elements(p_lines) with ordinality as t(line, ord);

  return query select v_id, true;
end $$;

-- 7. 誰が読める・書けるか(RLS と GRANT の両方)--------------------------
alter table public.products            enable row level security;
alter table public.formulas            enable row level security;
alter table public.formula_lines       enable row level security;
alter table public.formula_sale_names  enable row level security;

create policy "ログインした人は読める" on public.products
  for select to authenticated using (true);
create policy "ログインした人は全部できる" on public.formulas
  for all to authenticated using (true) with check (true);
create policy "ログインした人は全部できる" on public.formula_lines
  for all to authenticated using (true) with check (true);
create policy "ログインした人は全部できる" on public.formula_sale_names
  for all to authenticated using (true) with check (true);

grant select on public.products to authenticated;
grant select, insert, update, delete on
  public.formulas,
  public.formula_lines,
  public.formula_sale_names
to authenticated;
grant usage on sequence public.formula_id_seq to authenticated;  -- 次の番号を振るため
grant select on public.formula_line_concentrations to authenticated;
revoke execute on function public.save_formula(text, uuid, numeric, date, text, jsonb) from public, anon;
grant execute on function public.save_formula(text, uuid, numeric, date, text, jsonb) to authenticated;

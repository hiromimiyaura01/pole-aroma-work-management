-- =====================================================================
-- 表記揺れ辞書(R6):ノートでの書き方 → 精油
-- 実行方法:Supabase の SQL Editor に貼って Run(1回だけ)
--
-- 例:「Bergamot」「O.S」→ 登録した精油「ベルガモット」「オレンジ・スイート」
-- - 写真の確認画面で精油を選んで保存すると、「この書き方を覚える」(最初からオン)で、ここに入る
-- - 次の読み取りからは、ここに入っている書き方は自動で結びつく(AI の判断より優先する:08)
-- - 「マジョラム」のように、どの精油か毎回違いうる書き方は「毎回選ぶ」にできる(oil_id は空)
-- - 間違えて覚えたものは、辞書の画面から直す・消す
-- =====================================================================

create table public.oil_aliases (
  alias_key       text primary key,                 -- 見比べ用にならした書き方(全角半角・大文字小文字・空白・点・かっこの違いをなくしたもの)
  alias           text not null,                    -- ノートでの書き方(最初に覚えたときの形)
  oil_id          uuid references public.essential_oils on delete cascade,
                                                    -- 精油を消したら、その精油への書き方も消える
  ask_every_time  boolean not null default false,   -- 毎回選ぶ(自動で結びつけない)
  times_used      int not null default 1,           -- 保存で使われた回数(よく使う書き方が分かる)
  created_at      timestamptz not null default now(),
  updated_at      timestamptz not null default now(),
  check (ask_every_time or oil_id is not null)      -- 「毎回選ぶ」でなければ、精油が決まっている
);

create trigger oil_aliases_updated_at
  before update on public.oil_aliases
  for each row execute function public.set_updated_at();

create index oil_aliases_oil_id on public.oil_aliases (oil_id);

-- 権限:ログインした人(ひろみ)だけ。RLS と GRANT の両方を付ける
alter table public.oil_aliases enable row level security;
create policy "ログインした人は全部できる" on public.oil_aliases
  for all to authenticated using (true) with check (true);
grant select, insert, update, delete on public.oil_aliases to authenticated;

-- 保存のときに、書き方をまとめて覚える(すでにあれば、精油を上書きして回数を足す)
-- 「毎回選ぶ」にした書き方は、上書きしない(覚え直さない)
create function public.remember_oil_aliases(p_items jsonb)
returns void
language sql
security invoker
as $$
  insert into public.oil_aliases (alias_key, alias, oil_id)
  -- 同じ処方に同じ書き方が2回あっても、1回にまとめる(後の行を使う)
  select distinct on (t.item ->> 'alias_key')
         t.item ->> 'alias_key', t.item ->> 'alias', (t.item ->> 'oil_id')::uuid
  from jsonb_array_elements(p_items) with ordinality as t(item, ord)
  where coalesce(t.item ->> 'alias_key', '') <> ''
  order by t.item ->> 'alias_key', t.ord desc
  on conflict (alias_key) do update
    set oil_id = excluded.oil_id,
        times_used = public.oil_aliases.times_used + 1
    where not public.oil_aliases.ask_every_time;
$$;

grant execute on function public.remember_oil_aliases(jsonb) to authenticated;

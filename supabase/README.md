# supabase/ — データベースの設計と、入れるデータ

| フォルダ | 中身 | 実行する人・タイミング |
|---|---|---|
| `migrations/` | 表を作る SQL(設計図) | ひろみが SQL Editor で、番号順に **1回だけ** 実行 |
| `seed/` | 表に入れるデータ(自動生成) | ひろみが SQL Editor で、番号順に **1回だけ** 実行 |
| `checks/` | 取り込みの確認用の SQL(読むだけ) | 取り込んだあとに実行して、期待する値と見比べる |

## IFRA 第51次改正の取り込み手順

1. Supabase の左メニュー **SQL Editor** →「New query」
2. 次のファイルの中身を、**順番に** 1つずつ貼って「Run」
   1. `migrations/20261106000001_ifra.sql`(表を作る)
   2. `seed/ifra_51_1_standards.sql`(基準と上限)
   3. `seed/ifra_51_2_annex.sql`(Annex と例外表)
3. 確認(どちらか)
   - `checks/ifra_51_checks.sql`:全体を貼って1回 Run。全項目が OK/★要確認 で1つの表に出る
   - `checks/ifra_51_checks_step_by_step.sql`:①〜⑤を1つずつ選んで Run し、「期待」と見比べる(中身を理解しながら確かめたいとき)
   - 注:SQL Editor は、いくつかの SQL を一度に実行すると、最後の1つの結果しか表示しない
4. 全件の突き合わせ:`checks/ifra_51_verify_all.sql` を貼って1回 Run。「食い違い 0件」の1行だけが出れば、Excel とデータベースが全件一致
   - 取り込み(`tools/ifra/build_seed.py`)とは別の方法で Excel を読んで作った SQL(`tools/ifra/build_verify.py`)

## seed/ のデータの作り方(再現手順)

IFRA の公式 Excel から、次のプログラムで作る(Excel はリポジトリに入れない)。

```bash
python3 -I tools/ifra/build_seed.py <一覧表.xlsx> <Annex.xlsx> supabase/seed
```

- 出典の URL と、取り込んだファイルの指紋(sha256)は `ifra_amendments` 表に残る。
- 整え方のルールは `tools/ifra/build_seed.py` の `normalize_limit()` / `normalize_annex_value()`。
- 【注意】seed/ のデータは IFRA の著作物から作ったもの。リポジトリを公開する前に扱いを確かめる(CLAUDE.md)。

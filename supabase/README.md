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

## 例外表(11B の6件)の決定の取り込み(2026-11-10)

1. `migrations/20261110000001_ifra_review_decisions.sql`(足し算のグループの表と、11B の「使う上限」のビュー)
2. `seed/ifra_51_3_review_decisions.sql`(6件の決定と、柑橘のグループの8つの精油)
3. 確認:`checks/ifra_51_review_checks.sql` を貼って1回 Run。「判定」が全部 OK なら期待どおり

## 精油の登録(R5・R9)の表(2026-11-10)

1. `migrations/20261110000002_essential_oils.sql`(精油・Annex との結びつき・基準との結びつきの表と、一覧用のビュー)
- 精油のデータは、アプリの画面(/oils)から登録する。処方のデータと同じく、リポジトリには入れない。
2. `migrations/20261110000003_grants_and_oil_fields.sql`(アプリが表を使うための権限 GRANT と、抽出部位を複数選べる形に変える)

## 二重登録の防止(2026-11-14)

1. `migrations/20261114000001_oil_submission_token.sql`(精油に「この1回の登録の番号」の列と、同じ番号は1件だけの決まりを足す)
- 片付け(1回だけ):`maintenance/2026-11-14_dedupe_oils_1_check.sql` で消える予定を確認 → `maintenance/2026-11-14_dedupe_oils_2_delete.sql` で消す

## 処方と、確認の計算・判断の記録(R10〜R12)(2026-11-14)

1. `migrations/20261114000002_formulas.sql`(製品・処方・配合行・販売名の表、完成品中の濃度のビュー、まとめて保存する関数)
2. `migrations/20261114000003_formula_checks.sql`(確認の計算のビュー、判断の記録・確認の記録の表、一覧用のビュー)
3. 確認:`checks/formulas_checks.sql` の①②を1つずつ Run(期待する値はファイルの中)
4. 処方をアプリの画面(/formulas)から登録したあと、③(事前検証の3処方との答え合わせ)を Run
- 処方のデータは、アプリの画面から登録する。リポジトリには入れない。
- 計算の流れ(途中のビューも SQL Editor で見られる):
  `formula_line_concentrations`(配合行ごとの濃度)→ `formula_oil_concentrations`(精油ごと)→ `formula_check_contributions`(精油 × 規制成分)→ `formula_check_items`(基準ごとの合計と段階)→ `formula_check_board`(最新の判断を重ねたもの)

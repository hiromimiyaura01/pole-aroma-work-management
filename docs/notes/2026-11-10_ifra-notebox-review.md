# 調査メモ:IFRA の例外表(カテゴリ 11B)6件の本文の確認

- 確認日:2026-11-10
- 確認した人:ひろみ(PDF を IFRA の Standards Library から取得)、Claude(本文の読み取りと要約)
- 出典:IFRA Standards Library(https://ifrafragrance.org/standards-library)の各 Standard の PDF
- 注意:ここに書くのは基準の本文の読み取り結果で、法的な判断ではない。扱いはひろみが決めた(`decision-log.md` 2026-11-10)。

---

## 1. なぜこの6件か

IFRA の一覧表(Excel)の「カテゴリ 11B」の欄が、決まったルールで数値にできなかったもの(危険度の高さで選んだのではない)。

- 「See Notebox」(本文の注記を読む必要がある):5件
- 「0.0015 (5-MOP)」(成分 5-MOP で測った量という条件つき):1件

## 2. 本文に書いてあること【事実】

### 「成分そのものは禁止、天然原料から入る分は上限まで」の5件

| Standard | 成分 | 本文の版 | 天然原料から入る分の上限(完成品中・全カテゴリ共通) | 規制の理由 |
|---|---|---|---|---|
| IFRA_STD_110 | cis- と trans-Asarone(合計) | Amendment 40(2006) | 0.01%(100 ppm) | 発がん性 |
| IFRA_STD_112 | Benzyl cyanide | Amendment 38(2004) | 0.01%(100 ppm) | シアンの放出 |
| IFRA_STD_154 | Isophorone | Amendment 49(2020) | 0.0013% | データ不足 |
| IFRA_STD_158 | 7-Methoxycoumarin | Amendment 43(2008) | 0.01%(100 ppm) | 皮膚感作性・光感作性 |
| IFRA_STD_179 | Safrole・Isosafrole・Dihydrosafrole(合計) | Amendment 17(1987) | 0.01% | 発がん性 |

- どれも「成分そのもの(単体の香料)として使ってはいけない」「その成分の代わりとして天然原料を使ってはいけない」と書いてある。
- 天然原料からの量は、IFRA の Annex(contributions from other sources)で見る。

### IFRA_STD_089 柑橘のフロクマリン(Amendment 49、2020)

- 光毒性のための基準。カテゴリ 11B は 5-MOP(ベルガプテン)として完成品中 0.0015%(15 ppm)。
- 5-MOP の量が測られていない場合は、精油ごとの基準を使う。複数を一緒に使うときは「それぞれの濃度 ÷ その上限」を%で表した合計が 100 を超えないこと。
- 対象として挙げられた精油(8つ):Angelica root oil、Bergamot oil expressed、Bitter orange oil expressed、Cumin oil、Grapefruit oil expressed、Lemon oil cold pressed、Lime oil expressed、Rue oil
- 少量の 5-MOP を含む精油:Petitgrain Mandarin oil(50 ppm)、Tangerine oil cold pressed(50 ppm)、Parsley leaf oil(20 ppm)。単独なら特別な制限は不要。グループの精油と一緒に使うときは、5-MOP の合計に注意。

## 3. Annex で、これらの成分を多く含む精油(典型値)【事実】

- Asarone:カラムス 70.7%、クベバ 4.53%、キャロットシード 0.24%、レモンバーベナ Abs 0.11%
- Benzyl cyanide:カロカルンデ Abs 5%、ジャスミンサンバック Abs 1.2%、チャンパカ Abs 1%、オレンジフラワー Abs 0.52〜0.83%、チュベローズ Abs 0.8%、ネロリ 0.16%、イランイラン 0.02〜0.05% など
- Isophorone:シスタス 0.2% のみ
- 7-Methoxycoumarin:ラベンダー コンクリート 8%・Abs 3.8%、ライム 0.21〜0.28%、レモン 0.05%(ラベンダーの精油は載っていない)
- Safrole 類:サッサフラス・オコテア 92%、カンファー brown 80%・yellow 50%、メース 1.7%、ナツメグ 1.5%、シナモンリーフ 1.2% など

## 4. ここから言えること【推測】

- 5件は、Annex の成分の量と上限で、ほかの成分と同じように計算できる(数値の上限として扱える)。
- 柑橘(089)は、5-MOP の実測値がなくても、精油ごとの基準+合計で確認できる。これまで課題だった「5-MOP の参考値の出典」(R15)は、この方法で代えられる。
- 同じ植物でも、精油/アブソリュート/コンクリートで成分の量が大きく違う(例:ラベンダー、ジャスミン)。精油の登録(R5)で種類を正しく分けることが大事。

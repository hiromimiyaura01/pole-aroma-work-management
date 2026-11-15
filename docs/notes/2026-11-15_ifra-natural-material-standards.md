# 調査メモ:「原料そのものの基準」がある天然原料の一覧(IFRA 第51次改正・カテゴリ 11B)

- 作成日:2026-11-15
- 出典:IFRA 51st Amendment の一覧表(Excel)から取り込んだデータ(`ifra_standards`・`ifra_limits_11b_effective`)。取り直す場所は `2026-11-05_ifra-official-sources.md`
- 作り方:263 の基準の名前を Claude が読み、天然原料(精油・アブソリュート・樹脂など)を指すものを抜き出した。
  - 【推測】IFRA の一覧表には「天然原料かどうか」の列がないので、**名前からの分類**。抜けがありうる。
- 注意:ここに書くのはデータの整理で、法的な判断ではない。上限は 11B(ピローミスト)の値。ほかの製品カテゴリでは違う。

## 1. なぜこの一覧が要るか

- IFRA の基準(263)のほとんどは **成分**(メチルオイゲノールなど)の基準で、精油に含まれる量は Annex から計算する(①)。
- 一部だけ、**精油や樹脂そのもの** に基準がある(②)。これは成分の足し算では出てこないので、精油ごとに結びつける必要がある。
- 【事実】HOPE の答え合わせで、ベルガモットを②に結びつけていなかったため、ベルガモット油そのものの黄(約3.75倍)が出なかった(questions-log Q36)。

## 2. 上限があるもの(21)

| 基準 | 11B の上限(完成品中) | 補足 |
|---|---|---|
| Bergamot oil expressed(圧搾ベルガモット) | 0.4% | 柑橘のフロクマリンのグループ |
| Lemon oil cold pressed(圧搾レモン) | 2% | 同上 |
| Lime oil expressed(圧搾ライム) | 0.7% | 同上 |
| Grapefruit oil expressed(圧搾グレープフルーツ) | 4% | 同上 |
| Bitter orange peel oil expressed(圧搾ビターオレンジ) | 1.25% | 同上 |
| Angelica root oil(アンジェリカルート) | 0.8% | 同上 |
| Cumin oil(クミン) | 0.4% | 同上 |
| Rue oil(ルー) | 0.15% | 同上 |
| Ylang ylang extracts(イランイラン) | 2.8% | |
| Jasmine absolute (grandiflorum) | 2.3% | |
| Jasmine absolute (sambac) | 15% | |
| Melissa oil (genuine Melissa officinalis L.)(メリッサ) | 2.3% | |
| Verbena oil and absolute (Lippia citriodora)(レモンバーベナ) | 2.7% | 精油は禁止、アブソリュートに上限 |
| Tea leaf absolute(茶葉アブソリュート) | 0.8% | |
| Oakmoss extracts(オークモス) | 0.1% | |
| Treemoss extracts(ツリーモス) | 0.1% | |
| Opoponax(オポポナックス) | 1.7% | |
| Styrax(スチラックス) | 2.5% | 未精製のものは禁止 |
| Peru balsam(ペルーバルサム) | 0.034% | 未精製のものは禁止 |
| Tagetes oil and absolute(タジェット) | 0.01% | Tagetes erecta は禁止 |
| Acetylated Vetiver oil(アセチル化ベチバー) | 0.033% | ふつうのベチバー精油とは別のもの |

## 3. 11B で使用禁止のもの(11)

Alantroot oil(エレカンペーン)/Boldo oil(ボルド)/Chenopodium oil(ケノポジ)/Costus root oil, absolute and concrete(コスタス)/Fig leaf absolute(フィグリーフ)/Massoia bark oil(マソイア)/Santolina oil(サントリナ)/Savin oil(サビン)/Birch wood pyrolysate(未精製のバーチタール)/Cade oil(未精製のケード)/Colophony(ロジン)

## 4. 規格だけのもの(1)

Pinacea derivatives(マツ科の精油など。過酸化物の量の規格。上限の数値はない)

## 5. 使い方

- 登録した精油がこの一覧にあたるかを見て、あたるものは精油の画面の「② 原料そのものの基準」で結びつける。
- 登録済みの精油から候補を機械で探す SQL:`supabase/checks/oil_standard_candidates.sql`(Annex の精油の CAS 番号が、基準の CAS 番号と同じものを出す)。
- ①(Annex)と②は **両方** 結びつける。見ているものが違う(①=含まれる成分の合計、②=精油そのものの量)。
  - 【事実】IFRA の説明(https://ifrafragrance.org/using-the-standards 、検索結果の要約で確認。確認日 2026-11-14):天然原料は、その原料の基準と、成分ごとの基準の両方を考え、厳しい方が使える量を決める。

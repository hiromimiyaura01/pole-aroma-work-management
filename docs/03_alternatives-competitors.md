# 03 競合と代替手段

ステータス:**確定 v1.0(2026-11-05)**
前提:`01_problem-hypotheses.md` v1.0、`02_target-persona.md` v1.0
調査方法:Web 検索(日本語・英語)。確認日はすべて 2026-11-05。
注意:ツールの機能・価格は、**販売元の説明・アプリストア・紹介サイトにもとづく**(実際に使って確かめたものではない)。国は、確認できたものだけ書き、分からないものは「不明」とした。

---

## 0. 結論(先に)

- 【事実】ひろみは、これまでにツールを試したことがない。ひろみの周りでは「**そもそもここまで真面目に管理しようとしている人がいない**」「**管理されていないのが実態**」(ひろみの回答、2026-11-05)。
- 【事実】今回の調査では、**「日本語で、精油の処方記録・IFRA の確認・瓶ごとの在庫と原価」を1つでまとめて扱うツールは見つからなかった**。
- 【推測】いちばん大きな代替手段は「**何もしない**(ノートと記憶と、ざっくりした感覚で済ませる)」。競合はツールではなく、この状態。
- 【推測】ただし、**競合がいないことは「需要がない」ことのサインでもありうる**(4. 反証を参照)。

---

## 1. 代替手段の全体像

| 種類 | 例 | 国 | 主な対象 |
|---|---|---|---|
| A. 何もしない/ノートと記憶 | ひろみの現状、ひろみの周り | — | — |
| B. 汎用の表計算 | Google スプレッドシート、Excel | — | 誰でも |
| C. 香水の処方管理+IFRA チェック | Perfumers Vault、Formulair、Aroma Forge、dataEssence、Perfumedom Lab | 下表 | 調香師・香水作り(英語圏) |
| D. キャンドル・石鹸作家向けの在庫・原価管理 | Craftybase、Inventora、Soapmaking Friend、Pourwick | 下表 | ハンドメイド事業者(英語圏) |
| E. 精油レシピ・コレクション管理アプリ | Perfumer、The Daily Drop、Essential Oil Blending Tool | 不明 | アロマの趣味の人 |
| F. 日本のハンドメイド作家向け在庫・原価アプリ | サッカノカンリ、Misell | 日本【推測】 | アクセサリーなどの作家 |

---

## 2. 主なツールの詳細

### C. 香水の処方管理+IFRA チェック

| ツール | 国 | 内容(販売元などの説明) | 価格・形態 | 出典 |
|---|---|---|---|---|
| Perfumers Vault / Perfumers Vault 2 | 不明(販売者名は M24 Media Ltd、PERFODYNE LABS LTD など) | 処方・原料・仕入先の管理。**IFRA ライブラリを取り込んで上限を確認**、IFRA 文書の作成 | 基本無料(PRO はアプリ内課金)。Web 版はオープンソース(MIT) | [App Store](https://apps.apple.com/us/app/id1525381567)/[PV2 FAQ](https://pv2-m24media-web.pages.dev/faq)/[ParfumFormula(派生版)](https://github.com/cupiz/ParfumFormula) |
| Formulair | 英国(ロンドン、Lux & Terra)※紹介サイトの記載 | 趣味・見習いの調香師向け。IFRA 上限の項目、処方の拡大縮小、希釈の管理 | iPhone・iPad・Mac | [scentverdict](https://scentverdict.com/directory/tool/formulair) |
| Aroma Forge | 不明 | IFRA 第51次改正・12カテゴリの確認、バッチ計算、原価、SDS 出力(開発者のフォーラム投稿による) | Web アプリ | [Basenotes](https://basenotes.com/threads/the-aroma-forge-perfume-app.570402/) |
| dataEssence | 英国【推測】(Streatley 社、.co.uk) | 香料・フレーバー企業向け。IFRA・FEMA・GHS/CLP。個人向けの「Solo」プランあり | 有料(価格不明) | [dataEssence](https://streatley.myzen.co.uk/dataEssence_overview.html) |
| Perfumedom Lab | 不明 | 処方の作業スペース。**IFRA・CLP の出力は「目安」で、正式な適合確認の代わりではない** と明記 | Web | [Perfumedom Lab](https://lab.perfumedom.com/) |

【推測】ひろみにとっての評価:
- **IFRA の確認ができる点は、このプロダクトの「赤・黄」と同じ領域**。とくに Perfumers Vault は無料で、IFRA の確認ができると説明されている。
- 一方で、次の点が合わない可能性が高い(いずれも未検証)。
  - 英語のみ。
  - 合成香料の単体成分を前提にした作り。精油の成分構成(参考値)は、自分で入れる必要がありそう。
  - 手書きノートの読み取りはない。
  - 日本の購入先(マンデイムーンなど)の瓶ごとの記録・原価とはつながらない。

### D. キャンドル・石鹸作家向けの在庫・原価管理

| ツール | 国 | 内容 | 価格・形態 | 出典 |
|---|---|---|---|---|
| Craftybase(Stocksmith に移行中との記載) | オーストラリア(第三者データベースの記載。要確認) | 原料と完成品の在庫、**香料の使用量と賦香率**、1個あたりの原価(COGS) | 有料(14日間無料トライアル)。Capterra で 4.6/5(240件以上) | [Craftybase](https://craftybase.com/soap-maker-software)/[CB Insights](https://www.cbinsights.com/company/craftybase/alternatives-competitors) |
| Inventora | 不明 | 石鹸・キャンドル事業者向け。原価計算、材料の在庫切れ通知、仕入先管理 | 有料 | [Inventora](https://inventora.com/?p=11325) |
| Pourwick | 不明 | キャンドル向けの原価計算・製造指示(iOS)。IFRA は「上限と SDS に従うこと」と注意書きのみ | €0.99 | [App Store](https://apps.apple.com/mt/app/pourwick/id6777827989) |
| Fragrancebuddy(計算ページ) | 不明 | キャンドル・石鹸向けの IFRA カテゴリの調べ方。「IFRA の文書を直接確認すること」と明記 | 無料(Web) | [Fragrancebuddy](https://fragrancebuddy.com/pages/fragrance-calculator) |

【推測】ひろみにとっての評価:
- **在庫・原価(②)の領域では、Craftybase が最も近い**。「賦香率」「香料の使用量」まで扱っている。
- ただし、IFRA の上限を自動で確認する機能は、今回の検索では見つからなかった。英語のみ、有料。

### E. 精油レシピ・コレクション管理アプリ

| ツール | 内容 | 価格 | 出典 |
|---|---|---|---|
| Perfumer | 精油の名前と **滴数** でレシピを作る。無料版はレシピ3件まで | 無料+有料 | [App Store](https://apps.apple.com/mo/app/perfumer/id1582680729) |
| The Daily Drop | 精油のコレクション管理(ブランド・サイズ・購入日・メモ)、残り少ないときの通知、手持ちからのブレンド提案 | 不明 | [mwm.ai](https://mwm.ai/ja/apps/the-daily-drop/6758109474) |
| Essential Oil Blending Tool | ブレンド時に安全上の注意を表示 | 不明 | [App Store](https://apps.apple.com/us/app/id1141392406) |

【推測】ひろみにとっての評価:趣味のアロマ向けで、滴数ベース。IFRA のカテゴリ別の確認や、事業としての原価管理は対象外に見える。

### F. 日本のハンドメイド作家向け在庫・原価アプリ

| ツール | 国 | 内容 | 価格 | 出典 |
|---|---|---|---|---|
| サッカノカンリ | 日本【推測】 | 材料を写真+品名・購入価格・入り数で登録し、作品の原価を自動計算。販売・利益の記録 | 無料+アプリ内課金。iPhone のみ | [App Store](https://apps.apple.com/jp/app/id1553072300) |
| Misell(ミセル) | 日本【推測】 | ハンドメイドアクセサリー作家向けの在庫・売上管理 | ¥300。iPhone のみ | [App Store](https://apps.apple.com/jp/app/id6752554103) |

【推測】ひろみにとっての評価:「個数」で数える材料(ビーズ、金具)が前提。精油のように **ml で買って g で使う** 材料や、IFRA の確認は対象外に見える。

---

## 3. 比べてみる【推測】

| 機能 | 何もしない/ノート | スプレッドシート | C. 香水処方+IFRA | D. Craftybase など | F. サッカノカンリなど | **このプロダクト** |
|---|---|---|---|---|---|---|
| 日本語 | ○ | ○ | ×(と思われる) | × | ○ | ○ |
| 手書きノートの読み取り | — | × | × | × | × | **○(AI)** |
| 精油を学名+抽出方法で特定 | × | 自作次第 | △ | × | × | ○ |
| IFRA カテゴリ別の確認(11B など) | × | 自作次第 | ○ | × | × | ○(赤・黄) |
| 「意図して超えた」の記録 | × | 自作次第 | 不明 | × | × | ○ |
| 瓶ごとの購入・原価 | × | 自作次第 | △(仕入先管理) | ○ | ○ | ○(②) |
| ml で買い g で使う換算(比重) | × | 自作次第 | 不明 | 不明 | × | ○(②) |
| 価格 | 無料 | 無料 | 無料〜有料 | 有料 | 無料〜¥300 | — |

### 差別化の仮説
1. **日本語で、精油を前提にしている**(学名+抽出方法で特定し、日本の購入先の瓶を記録できる)。
2. **手書きノートの写真から処方を作れる**(調べた範囲では、ほかにない)。
3. **IFRA を「合否」ではなく「赤・黄+判断の記録」として扱う**(作り手の判断を前提にする)。

---

## 3.5 ひろみが Perfumers Vault 2 を確認した結果【事実】(2026-11-05)

- 「**やりたいことと結構近い**」。
- 写真を撮ってアップする機能は **プロ版(有料)**。
- **価格との紐づけ機能はない**。
- 「簡単な処方の管理なら、いいかも」。

【推測】ここから言えること:
- ①(処方の記録+IFRA の確認)だけなら、**既存の無料ツールでかなり近いことができる**。差別化は「日本語」「精油の成分参考値を前提にしていること」「手書きノートの読み取り」に絞られる。
  - Perfumers Vault 2 の写真機能が「写真から処方を読み取る」ものか、「写真を添付するだけ」かは未確認。
- **処方と、瓶ごとの価格・在庫がつながっていない** ことが、既存ツールとのいちばんはっきりした差になりそう。①と②をつなげることに価値がある可能性がある。
  - → 進める順番(①→②)は決定済みだが、MVP の範囲を決めるとき(07)に、②の一部を①に含めるかを改めて検討する。

## 3.6 ひろみが「ここまで管理したい」理由【事実】(2026-11-05)

- アロマ作家の界隈の **ゆるさが目につく**。
  - 例:香水として売ってはいけないのに、それを思わせる売り方をする。「アロマは身体にやさしい!」と言う。
- **科学的にも安心・安全なアプローチを追求したい**。

【推測】ここから言えること:
- このプロダクトの価値は「時間の節約」よりも、**「根拠をもって作り、説明できる作り手でいること」を支える** ことにある。
- 想定ターゲットは「アロマ作家全体」ではなく、**安全性や根拠を重視する一部の作り手** に絞られる(02 に反映)。数は少ない可能性が高いが、課題をはっきり感じている層でもある。
- 4. の反証1(競合がいない=需要がない)に対しては、「需要は全体には少ないが、安全性を重視する作り手には強くある」という仮説で答えることになる。06 で確かめる。

## 4. 反証(この調査から見える、都合の悪い可能性)

1. **競合がいない=需要がない、かもしれない。**
   - 「誰もここまで真面目に管理しようとしていない」は、課題が「まだ気づかれていない」可能性と、「多くの人にとって課題ではない」可能性の両方を示す。
   - → 06(市場規模)では、条件に当てはまる事業者の数とあわせて、「管理したいと思う理由」があるかも考える。
2. **英語圏には、無料で IFRA を確認できるツールがすでにある(Perfumers Vault など)。**
   - ひろみがそれを使えば足りるなら、①の価値は「日本語」と「手書きの読み取り」に絞られる。
   - → ひろみが Perfumers Vault 2 を確認した(3.5)。処方の管理には近いが、価格・在庫との紐づけはない。
3. **在庫・原価は、汎用のツールで足りるかもしれない。**
   - Craftybase は賦香率まで扱っている。日本語でなくてよければ、②は既存ツールで済む可能性がある。

---

## 5. 出典(確認日:2026-11-05)

- Perfumers Vault:https://apps.apple.com/us/app/id1525381567 、https://pv2-m24media-web.pages.dev/faq
- ParfumFormula(Perfumers Vault の派生版):https://github.com/cupiz/ParfumFormula
- Formulair:https://scentverdict.com/directory/tool/formulair
- Aroma Forge:https://basenotes.com/threads/the-aroma-forge-perfume-app.570402/
- dataEssence:https://streatley.myzen.co.uk/dataEssence_overview.html
- Perfumedom Lab:https://lab.perfumedom.com/
- Craftybase:https://craftybase.com/soap-maker-software 、https://craftybase.com/about-us/ 、https://www.cbinsights.com/company/craftybase/alternatives-competitors
- Inventora:https://inventora.com/?p=11325
- Pourwick:https://apps.apple.com/mt/app/pourwick/id6777827989
- Fragrancebuddy:https://fragrancebuddy.com/pages/fragrance-calculator
- Perfumer:https://apps.apple.com/mo/app/perfumer/id1582680729
- The Daily Drop:https://mwm.ai/ja/apps/the-daily-drop/6758109474
- Essential Oil Blending Tool:https://apps.apple.com/us/app/id1141392406
- サッカノカンリ:https://apps.apple.com/jp/app/id1553072300
- Misell:https://apps.apple.com/jp/app/id6752554103
- IFRA の上限の考え方(参考):https://fraterworks.com/blogs/information/working-with-ifra-limits

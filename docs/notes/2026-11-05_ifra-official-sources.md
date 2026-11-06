# 調査メモ:IFRA の公式資料

- 確認日:2026-11-05
- 目的:「赤(確実に除外したい原料)」の一覧を、IFRA の公式資料から作るための下調べ
- 注意:ここに書くのは資料の読み取り結果であり、法的な判断ではない。IFRA 自身も「この一覧より個々の Standard の文書が優先する」と明記している。

---

## 1. 確認した資料(出典)

| 資料 | URL | 状態 |
|---|---|---|
| IFRA Standards Library | https://ifrafragrance.org/standards-library | 閲覧した |
| IFRA Standards の説明・FAQ | https://ifrafragrance.org/initiatives-positions/safe-use-fragrance-science/ifra-standards | 閲覧した(一部は要約のみ) |
| Standards Documentation | https://ifrafragrance.org/initiatives-positions/safe-use-fragrance-science/ifra-standards/ifra-standards-documentation | 閲覧した |
| **IFRA 51st Amendment – IFRA Standards Overview (XLSX)** | https://d3t14p1xronwr0.cloudfront.net/docs/Standards-Documentation/ifra-51st-amendment-ifra-standards-overview.xlsx | **ダウンロードして中身を確認した** |
| Annex on contributions from other sources (XLSX) | https://d3t14p1xronwr0.cloudfront.net/docs/Standards-Documentation/ifra-51st-amendment-annex-on-contributions-from-other-sources.xlsx | **2026-11-06 にダウンロードして中身を確認した**(下の 2.6) |
| Guidance for the use of IFRA Standards (PDF) | Standards Documentation ページからリンク | 取得したが本文を読めなかった(**製品カテゴリの定義はここにあるはず**) |
| 52nd Amendment End of Consultation のニュース | https://ifrafragrance.org/latest-updates/ifra-news/ifra-publishes-end-of-consultation-letter-for-the-52nd-amendment-to-the-ifra-standards | 閲覧した |

## 2. 分かったこと【事実】

### 位置づけ
- IFRA Standards は業界の **自主的な(voluntary)** 取り組み。ただし IFRA の会員(生産量で世界の約80%)には遵守が義務。
- 「自主的な基準であっても、各国の法令の遵守が免除されるわけではない」と明記されている。
- 「市場に出した香料を安全に使う最終的な責任は、その原料を供給する会社にある」とも書かれている。

### Standard の種類
- **Prohibition(禁止)**:使用の禁止
- **Restriction(制限)**:最大使用量、または使える製品の制限
- **Specification(規格)**:純度など、原料の品質に関する条件

### 現在の改正
- 公開されている最新は **第51次改正**(Notification Letter の日付は 2023年7月3日)。
- **第52次改正** は意見募集を 2026年6月に終え、正式な公示は **2027年1月の予定**。皮膚感作性にかかわる制限が48件新設、15件改訂される予定。
  - → 【推測】プロダクトの開発中か直後に、基準が更新される。**どの改正版にもとづいて確認したかを記録できる設計** にする必要がある。

### 一覧表(XLSX)の中身
- Standard は全部で **263件**。種類の内訳は次のとおり。
  - RESTRICTION 156/PROHIBITION 68/RESTRICTION_SPECIFICATION 11/SPECIFICATION 10/その他の組み合わせ 18
- 列:名前、CAS 番号、別名、種類、規制の理由(例:皮膚感作性、光毒性)、**製品カテゴリごとの上限(%)**(Category 1〜12)
- 製品カテゴリは 1, 2, 3, 4, 5A〜5D, 6, 7A, 7B, 8, 9, 10A, 10B, 11A, 11B, 12 の **18区分**。
- 【推測】この表は、そのまま **データベースの基準データ(マスタ)** として使える形をしている。SQL で処方と突き合わせる設計と相性がよい。

### 気になる原料の扱い(一覧表より)

| Standard | 名前 | 種類 | 理由 | Cat.4 | Cat.11A | Cat.12 |
|---|---|---|---|---|---|---|
| IFRA_STD_067 | Oakmoss extracts(オークモス) | 制限+規格 | 皮膚感作性 | 0.1% | 0.1% | **制限なし** |
| IFRA_STD_080 | Treemoss extracts(ツリーモス) | 制限+規格 | 皮膚感作性 | 0.1% | 0.1% | **制限なし** |
| IFRA_STD_087 | Bergamot oil expressed(圧搾ベルガモット) | 制限 | 光毒性 | 0.4% | 制限なし | 制限なし |
| IFRA_STD_089 | 柑橘油などフロクマリンを含む精油 | 制限 | 光毒性 | 5-MOP として 0.0015% | 制限なし | 制限なし |

- 使用禁止(Prohibition)の68件のうち、精油・植物原料と読めるものは次のとおり:Alantroot oil、Boldo oil、Chenopodium oil、Costus root oil、Fig leaf absolute、Massoia bark oil、Santolina oil、Colophony など。ほかの多くは合成の単体成分。

## 2.5 ピローミストの製品カテゴリ【事実】(2026-11-05 追記)

- **IFRA の公式文書で、ピロースプレーはカテゴリ 11B と明記されている。**
  - 「Guidance for the use of IFRA Standards」(2023年6月30日版)6.5.20「Pillow spray」、および Table 11 の製品一覧に「Pillow spray — Category 11B」とある。
  - 「IFRA 51st Amendment – Notification Letter」2.3「Categorization of Pillow Spray」にも同じ説明がある。
  - 出典 URL:IFRA の Standards Documentation ページ(https://ifrafragrance.org/initiatives-positions/safe-use-fragrance-science/ifra-standards/ifra-standards-documentation)から取得した PDF
- **そう決められた理由**(公式文書の要旨)
  - 使う人への説明に「乾いてから寝る」という指示がないため、枕の上面に噴霧し、乾く前に顔を乗せると想定している。
  - 顔を枕に押し付けるので、密着(occlusion)の要素もある。
  - 100%が肌に移ると考えるのは厳しすぎるので、濡れたフェイスシートを代わりの想定とし、20%が肌に残るとみなした。
  - カテゴリ 5B(顔用のリーブオン)や 10A にすべきという意見もあったが、検討の結果 11B とされた。
- 11A と 11B の違い:どちらも「肌に触れることを想定しているが、基材から肌への移りが少ない製品」。11B は **光毒性(紫外線)を考慮する** 区分、11A は考慮しない区分。
- 二次情報:Stock Fragrance の解説記事(https://stockfragrance.com/blogs/learn-about-fragrance/ifra-51st-amendment-guide、2023年8月7日公開、2026年10月更新)も「Pillow sprays fall under Category 11B」と書いている。ひろみが紹介した記事。

### カテゴリ 11B での上限(一覧表より)

| Standard | 名前 | Cat.11B |
|---|---|---|
| IFRA_STD_067 | Oakmoss extracts(オークモス) | **0.1%** |
| IFRA_STD_080 | Treemoss extracts(ツリーモス) | **0.1%** |
| IFRA_STD_087 | Bergamot oil expressed(圧搾ベルガモット) | 0.4% |
| IFRA_STD_089 | フロクマリンを含む柑橘油など | 5-MOP として 0.0015% |

- → 上の「Cat.12 では制限なし」は、ピローミストには当てはまらない。

## 2.6 Annex(contributions from other sources)の中身【事実】(2026-11-06 追記)

- シート「Natural contributions」に約1,030行。1行が「精油など(NCS)× IFRA の規制対象成分 × その成分の典型的な含有率(%)」。
  - 列:NCS の名前、**学名**、NCS の CAS 番号、規制成分の CAS 番号と名前、含有率(%)
  - 例:Tea tree oil(Melaleuca alternifolia)→ Methyl eugenol 0.05%/Olibanum oil(Boswellia spp.)→ beta-Thujone 0.4%
- IFRA 自身が「網羅的ではない、目安の一覧(non-exhaustive indicative list)」としている。
- 【推測】ここから言えること:
  - **IFRA の規制成分に限れば、精油ごとの典型的な含有率を IFRA の公式資料から取れる**。生活の木・THREE 研究サイトより、IFRA の確認には直接使える。
  - 生活の木・THREE は、Annex に載っていない精油の補足と、比重(原価の換算)に使う。
  - **同じ学名でも別の精油がある**。例:Cinnamomum camphora には「Ho leaf oil」「Ho bark oil」のほか、サフロール(発がん性を理由に禁止・制限)を多く含む「Camphor oil, brown/yellow」もある。学名だけで結びつけると危ない。抽出部位・名前まで合わせて特定する必要がある。

## 2.7 一覧表の「そのまま計算できない値」の数【事実】(2026-11-06 追記)

全263件の Standard のうち、上限の欄の中身を種類ごとに数えた。

| 種類 | カテゴリ 11B のみ | 全18カテゴリ | 例 |
|---|---|---|---|
| 数値 | 162 | 2,772 | 0.4 |
| 数値だが文字として保存 | 8 | 96 | "0.10" |
| 小数点がカンマ | 1 | 31 | "0,10" |
| 注記つきの数値 | 1 | 15 | "0.0015 (5-MOP)"、"0.0 (Prohibited)" |
| See Notebox(本文を読む必要あり) | 5 | 90 | — |
| No Restriction(制限なし) | 0 | 182 | — |
| 空欄 | 86 | 1,548 | 【推測】禁止(Prohibition)や規格(Specification)の Standard で空欄になる。要確認 |

- カテゴリ 11B で **人の判断が必要なもの は 6件**(See Notebox 5件:cis-/trans-Asarone、Benzyl cyanide、Isophorone、7-Methoxycoumarin、Safrole 類/注記つき1件:柑橘のフロクマリン 5-MOP)。
- それ以外(文字の数値、カンマ、No Restriction、空欄)は、**決まったルールで機械的に直せる**。

## 3. ここから言えそうなこと【推測】

1. **ピローミストがどの製品カテゴリにあたるかで、結果が大きく変わる。** → 2.5 のとおり、公式文書で 11B と確認できた。
   - オークモスは、カテゴリによって「0.1%まで」にも「制限なし」にもなる。
   - ピローミストのカテゴリは、Guidance の PDF で確かめる必要がある。調査の途中で「12 が適切と思われる」という要約が出たが、原文では確認できていない。
   - 【推測】カテゴリ 12 は「肌に触れない製品」の区分だと思われる(要確認)。ピローミストは枕(=寝ているときに顔や肌に触れる布)に噴霧するので、どう扱うかは慎重に確かめる。
2. **「赤」を「使用禁止」だけにすると、ひろみの普段の精油ではほとんど引っかからない可能性がある。**
   - 禁止されている精油は、一般的なアロマ用途ではあまり見かけないものが中心(ひろみのシートにある精油とは重ならないように見える)。
   - オークモスは「禁止」ではなく「制限」に分類されている。
   - → 「赤」の定義は「使用禁止」と「感作性などを理由とした強い制限」を合わせたものにするのが、ひろみの意図(オークモスを確実に除外したい)に合う。具体的な線引きは要相談。
3. 精油に含まれる規制成分は、Annex(contributions from other sources)で扱われている。精油単位で確認するには、この Annex も取り込む必要がある。

## 4. 次に確かめること

- ~~Guidance の PDF で、ピローミストの扱い~~ → 11B と確認(2026-11-05)
- ルームミスト・インヘラーなど、ほかの製品のカテゴリ
- Annex(contributions from other sources)の中身
- 個別の Standard PDF(例:IFRA_STD_067 オークモス)の本文

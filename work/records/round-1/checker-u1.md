# 検証担当の返却(レビューの回1、要求つき)

- task_id:R1-U1
- 作業種別:要求つき(review/role-checker.md U1.2)
- 対象:/home/user/doc-specs/work/kakurenbo-v1.md 7行目(第4段落)、9行目(第5段落)
- 実施日:2026-11-17
- 確かめ方の制約:検索(WebSearch)は使えた。ページの取得(WebFetch)は eric.ed.gov と www.cam.ac.uk で名前解決に失敗した(この環境で許可されたドメインの外)。以下の典拠は、検索結果に示された各資料の抜粋・要旨による。論文の原文(全文)には当たれていない。
- 誤り(F事実・F参照)のB:なし

## 根拠表の更新分(records/evidence.md へ Lead が反映する。現時点で evidence.md はないため EV1 から振る)

```text
根拠ID|位置|支える結論(位置)|種類|確かめ方|結果|確かめた回
EV1|7行目「目を覆って隠れたつもりになる幼い子は、その例だ。」|子どもには不確かさの源として「相手の考えを読み切れない幼さ」がある(7行目)|外部の事実|資料に当たる(検索抜粋):Russell, Gee & Bullard (2012) "Why Do Young Children Hide by Closing Their Eyes? Self-Visibility and the Developing Concept of Self", Journal of Cognition and Development 13(4), 550–576 の要旨と、大学・学会の紹介記事(Cambridge 大学、BPS Research Digest)|確認済(限定つき。原文未照合。限定は根拠カード EV1 を参照)|レビューの回1
EV2|9行目「相手の考えを読めるようになると、隠れる側も鬼も同じ隠れ場所の候補を思いつく。」|成長が二つ目の源(幼さ)を奪う(9行目、13行目の結論)|外部の事実|資料に当たる(検索抜粋):Peskin & Ardino (2003) Social Development 12(4)(隠れて遊ぶ力が3〜5歳で伸び、心の理論の得点と関係)。視点取得の水準2が4〜5歳ごろに現れ6〜8歳で大きく伸びること、二次の誤信念の理解が5〜7歳ごろに現れ11歳ごろまで伸びること(Perner & Wimmer 1985、Sullivan et al. 1994 を引く総説・論文の抜粋)|確認済(限定つき。原文未照合。限定は根拠カード EV2 を参照)|レビューの回1
```

## 根拠カード(未確認の事項)

```text
[EV1 の未確認部分] 位置:7行目 / 原文「目を覆って隠れたつもりになる幼い子は、その例だ。」
確認できたこと(CHK、検索抜粋):3〜4歳児を調べた Russell ら(2012)で、子どもは自分の目を覆うと、他者から見られないと判断した(頭や体は見えると認めながら)。人形が目を覆って隠れることを、多くの子が妥当と判断した。
未確認:(a) どれくらいよく見られるか(実験ごとの人数・割合)。検索抜粋に数値がなく、原文を取得できなかった。(b) 文言の原文照合。
理由:eric.ed.gov、www.cam.ac.uk の取得に失敗(許可ドメインの外)。原文の取得には、出版社のページか ERIC の許可が要る。
補足(要求の外。判定はしない):Russell らは、この行動を「自己は目と目が合ってはじめて知覚される」という自己の概念の発達段階として説明している。後の Moll らの研究(Moll & Khalulyan 2017 など)は、自己中心性ではなく相互性(目が合わなければ見られない、という双方向性)の理解の表れと解釈している。本文はこの行動を「相手の考えを読み切れない幼さ」の例としている。現象そのものは確かめられたが、「相手の視点を読めないことの例」という位置づけは、原著者の解釈と一致しない可能性がある。誤りとは判定していない(原文で解釈を照合していないため)。

[EV2 の未確認部分] 位置:9行目 / 原文「相手の考えを読めるようになると、隠れる側も鬼も同じ隠れ場所の候補を思いつく。」
確認できたこと(CHK、検索抜粋):他者の視点・考えを読む力は、幼児期から学童期にかけて伸びる(視点取得の水準1は2〜2.5歳、水準2は4〜5歳に現れ6〜8歳で伸びる。二次の誤信念は5〜7歳ごろに現れ、11歳ごろまで伸びる。隠れて遊ぶ力は3歳で少数、4歳で大半、5歳でほぼ全員が成功し、心の理論の得点と関係する)。
未確認:(a) 「読めるようになると、隠れる側も鬼も同じ候補を思いつく」という帰結そのもの(かくれんぼうでの隠れ場所の選び方が、成長につれて鬼と隠れる側で揃っていくことを調べた資料)は見つからなかった。これは本文の推論であり、要求(2)の前提の範囲外として扱った。(b) Peskin & Ardino の年齢ごとの成功の割合は、著者ページの一覧の抜粋で、この論文のものと確定できていない。(c) 各論文の原文照合。
理由:検索で該当資料が見つからない。原文の取得は許可ドメインの外で行えなかった。
```

## 当たった資料(検索結果)

- Russell, Gee & Bullard 2012:https://eric.ed.gov/?id=EJ979383(取得失敗、検索抜粋のみ)、https://www.cam.ac.uk/research/news/windows-to-the-self(取得失敗)、https://bps.org.uk/research-digest/why-do-children-hide-covering-their-eyes、https://www.popsci.com/science/article/2012-10/why-do-children-think-covering-their-eyes-makes-them-invisible/
- Moll らの解釈:https://dornsife.usc.edu/mid-la/wp-content/uploads/sites/317/2023/11/Moll_Khalulyan_2017.pdf、https://dornsife.usc.edu/mid-la/wp-content/uploads/sites/317/2023/11/Khalulyan_etal2021.pdf
- Peskin & Ardino 2003:https://zendy.io/title/10.1111/1467-9507.00245
- 視点取得・二次の誤信念:https://en.wikipedia.org/wiki/Perspective-taking、https://pmc.ncbi.nlm.nih.gov/articles/PMC4012199、https://www.frontiersin.org/articles/10.3389/fpsyg.2025.1525368/full、https://escholarship.org/uc/item/5zw9683d

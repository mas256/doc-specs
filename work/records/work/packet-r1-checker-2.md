# 作業パケット:検証担当(要求つき。レビューの回1。L4.8)

- task_id:R1-checker-req。役割:検証担当(agents/review-checker)。作業種別:要求つき(U1.2。評価者が返した検証の要求だけを確かめる)。
- 規格フォルダ:`/tmp/claude-0/-home-user-doc-specs/0532b02b-2c15-5422-9d66-c69a7f7e2177/scratchpad/unz/doc-specs-v4`
- 読むもの:common.md、review/core.md、review/role-checker.md。入力は、下の要求の一覧と、該当箇所の本文だけ。
- author-style.md:なし(渡さない)。

## 検証の要求の一覧

| 要求ID | 位置 | 確かめたい事柄 |
| --- | --- | --- |
| U-1(判定が決まる項目の仮ID:S-CTX の J5)| `/home/user/doc-specs/work/kakurenbo-v1.md` の P4(第7行)の第3文「かくれんぼうは、鬼ごっこと違い、体力の差より隠れ場所と読み合いが勝敗を分ける。」 | かくれんぼうでは、鬼ごっこより、勝敗への体力の寄与が小さいと言えるか。遊びの研究や、一般に認められた記述に照らして。外部の資料に当たれず確かめられない場合は、「未確認」とし、理由を書く(推測で確認済にしない) |

(本文のファイルの正しい場所は `/home/user/doc-specs/work/kakurenbo-v1.md` である。)

## 書き出し先

`/home/user/doc-specs/work/records/round-1/check-request-result.md`

## 期待する返却物

U4.2 の形(要求ごとに、確認済/誤り/未確認と、確かめ方・典拠。誤りは検証担当が起案するB(U2.6)として返す)。返信には索引と C9.3 の事項だけを書く。検索のとき、この作業の経緯や個人情報を検索語に含めず、確かめる事柄だけを検索語にする。

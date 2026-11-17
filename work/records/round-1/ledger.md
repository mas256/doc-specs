# 台帳(レビュー回1。L3.7)

| task_id | 担当(定義ファイル) | モデル・effort | 入力 | 返却物の所在 |
| --- | --- | --- | --- | --- |
| R1-collator | 照合担当(review-collator) | haiku・medium | 本文、対応づけ、規格(common.md N1.10〜、role-collator.md) | round-1/collation.md、collation-for-chapter.md(窓口が抜粋) |
| R1-structure-1 | 構造担当 第1段階(review-structure) | sonnet・high | 本文、brief.md、mapping.md、boundaries.md | round-1/structure-packet.md、structure-1-cards.md、ledger-structure-1.md |
| R1-summary | 要約テスト(定義なし) | haiku・medium | 本文の写しだけ(round-1/summary-test/) | round-1/summary-test-result.md(窓口が本文を保存) |
| R1-chapter-1 | 章担当(review-chapter) | sonnet・high | 本文、構造パケット、照合表の抜粋、brief.md、mapping.md | round-1/chapter-1-cards.md、ledger-chapter-1.md |
| R1-checker-req | 検証担当 要求つき(review-checker) | sonnet・high | 要求 U-1 と該当箇所 | round-1/check-request-result.md |
| R1-structure-2 | 構造担当 第2段階 | sonnet・high | structure-2-input.md(章担当の要約など。判定は渡さない)、要約テストの結果、U-1 の結果 | round-1/structure-2-cards.md、ledger-structure-2.md |

独立した確認なし:なし。登録単位と判定は report.md の「台帳の要約」。粒度の通過(L5.7):広い文脈=未確認(U-1)、文書全体=指摘あり、章・部=指摘あり、節・項・話題=指摘あり、数文単位=指摘あり(P)、個々の表現=指摘あり(B6)、媒体=対象外(指定なし)。

担当の定義は `.claude/agents/` に登録されておらず、汎用のサブエージェントに定義ファイルを読ませて代行した(START.md §3。依頼者への報告事項)。

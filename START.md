# START（AI向け入口）

この仕様書群を受け取った会話は、まずこのファイルだけを読み、依頼の種類を見分ける。
※ `README.md`、`MANUAL.md` は人間向けであり、文書作成の会話では読まない。
※ `docs/DESIGN.md` と `docs/DESIGN_HISTORY.md` は**フラグシップモデルで動かす場合、または仕様書自体を改訂する場合のみ**併せて読む（`Sonnet` / `Haiku` 等の軽量モデルによる通常実行では読まない）。

## 1. 依頼の分類（A〜F）
| 記号 | 依頼の種類 | 最初に読むファイル |
| --- | --- | --- |
| **A** | 文書を作る（壁打ちから） | `common.md`、`orchestrator.md`、`handoff.md`、`writing/phase-1-discussion.md` |
| **B** | 読んで直す（既存原稿） | `common.md`、`orchestrator.md`、`handoff.md`、`writing/phase-5-reading.md` |
| **C** | 形式のレビュー（採否表） | `common.md`、`handoff.md`、`review/core.md`、`review/role-lead.md` |
| **D** | 改稿（採否表による修正） | `common.md`、`handoff.md`、`review/revision.md` |
| **E** | 再検証 | `common.md`、`handoff.md`、`review/core.md`、`review/role-verifier.md` |
| **F** | 担当として働く（別会話） | 作業パケットで指定された担当ファイル（`agents/*.md`）と `common.md` |

どれにも当てはまらない場合は、推測で始めず依頼者に確認する。

## 2. 開始前の確認（窓口が最初に行う）
1. **作業場所と保存形式**: GitHub / ローカルフォルダに書き出せるか、ファイル操作はできるがGitHub連携はないため完了時に `.zip` でまとめるか、ファイル出力不可の通常チャット（コードブロック等で受け渡し）かを確認する。
2. **実行環境**: サブエージェントを使える環境では「各担当を別エージェントとして呼ぶか、この会話がなりきって進めるか」を依頼者に尋ねる（使えない環境ではなりきりで進める）。
3. **既存 `author-style.md` の有無**: 手持ちの `author-style.md`（または参考にしたい過去文章）があるかを確認する。なければ新規扱いとし、事前の文体質問は行わない。

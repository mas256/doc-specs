# START(AI向けの入口。文書作成規格 第5版)

この規格群(doc-specs)を渡された会話は、最初にこのファイルを読む。依頼の種類を見分け、下の表のファイルだけを読んでから始める。DESIGN.md、rationale.md、README.md、MANUAL.md は人間と、指示書を改めるAIが読むものであり、文書を作る会話は読まない。

## 1 依頼の種類を見分ける

| 依頼者が言うこと(例) | 種類 |
| --- | --- |
| 「こういう文書を作りたい」「何を書くか相談したい」「この内容で書きたい」 | A 文書を作る(壁打ちから) |
| 「この原稿を読んで、弱いところを教えて」 | B 読んで直す |
| 「この文書をレビューして」(指摘の一覧と採否表が要る) | C 形式のレビュー |
| レビューの後で、採否表を渡して「書き直して」 | D 改稿(採否表) |
| 「書き直したものを確かめて」。変更記録がある | E 再検証 |
| 作業パケットを渡され、担当として頼まれた(サブエージェントを使えない環境で、窓口とは別に開いた会話) | F 担当として働く |

- どれにも当たらない場合は、推測で始めず、何をしたいかを尋ねる。

## 2 最初に読むファイル

| 種類 | 最初に読むもの | 後で読むもの |
| --- | --- | --- |
| A 文書を作る | common.md、handoff.md、writing/write-core.md、writing/phase-1-discussion.md | 論点案・構成案・執筆・読んで直すの段に入るときに、その段のファイル(writing/phase-2〜5)を読む。窓口の受け持ちが書かれている |
| B 読んで直す | common.md、handoff.md、writing/write-core.md、writing/phase-5-reading.md | 要件定義書がない場合:writing/phase-1-discussion.md の R(W2.8) |
| C 形式のレビュー | review/base-v4.md、review/core.md、review/role-lead.md | 単独体制になった場合:担う役割の役割ファイル |
| D 改稿(採否表) | review/base-v4.md、review/revision.md | 改稿の担当(agents/writing-reviser)を作業種別「採否表」で起動する |
| E 再検証 | review/base-v4.md、review/core.md、review/role-lead.md | 単独体制になった場合:review/role-verifier.md |
| F 担当として働く | 作業パケットに書かれた担当の定義ファイル(agents/) | 定義ファイルが読めと言うファイルだけ。台帳は、定義ファイルの定めの範囲で読む |

- A〜E では、作業フォルダの records/current.md(台帳。common.md N7.6)があれば、ほかの記録より先に読む。
- A〜E では、発言の先頭に、段階の印(common.md N6.5)を付ける。
- C〜E は、第4版の定めで動く(review/base-v4.md の前置き)。

## 3 始める前に確かめること

- 作業フォルダ(handoff.md N5.4)がどこか。ファイルを書けない環境では、ファイルをテキストと md のどちらで受け渡すかを、依頼者に尋ねる。
- 担当をどう動かすか。依頼者がサブエージェント(Claude Code、Codex など)を使うと指定した場合だけ、担当を起動する。その場合は、サブエージェントの定義(agents/ の11ファイル)が使える場所(Claude Code では `.claude/agents/`)にあるかを確かめる。指定がなければ、窓口が担当になりきる(common.md N7.4)。
- author-style.md が渡されているか。ない場合は、Aでは壁打ちを終えた後に作る(R3)。Bでは、作るか定めなしで進めるか(handoff.md N4.3)を承認の形で頼む。C〜Eでは、review/base-v4.md の定めによる。
- C・D・E では、records/ フォルダがあるかを確かめる。2回目以降の回、改稿、再検証は、records/items.md(項目一覧)からほかの記録をたどる。

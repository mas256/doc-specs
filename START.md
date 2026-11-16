# START(AI向けの入口。文書作成規格 第4版)

この規格群(doc-specs)を渡された会話は、最初にこのファイルを読む。依頼の種類を見分け、下の表のファイルだけを読んでから始める。表にないファイルは、表の「後で読むもの」の条件に当たったときに読む。rationale.md、README.md、MANUAL.md は人間向けであり、読まない。

## 1 依頼の種類を見分ける

| 依頼者が言うこと(例) | 種類 |
| --- | --- |
| 「こういう文書を作りたい」「何を書くか相談したい」。書く内容がまだ固まっていない | A 壁打ちから作る |
| 書く内容・読者・目的が、依頼文や資料でほぼ決まっている | B 要件定義から作る |
| 「この文書をレビューして」 | C レビュー |
| レビューの後で、採否表を渡して「書き直して」 | D 改稿 |
| 「書き直したものを確かめて」。変更記録がある | E 再検証 |

- AかBか決められない場合は、依頼者に「書く内容は決まっていますか。相談から始めますか」と尋ねる。
- どれにも当たらない場合は、推測で始めず、何をしたいかを尋ねる。

## 2 最初に読むファイル

| 種類 | 最初に読むもの | 後で読むもの |
| --- | --- | --- |
| A 壁打ちから作る | common.md、writing/write-core.md、writing/phase-0-discussion.md(Z1〜Z4) | 工程1へ移るとき:handoff.md、writing/phase-1-requirements.md、writing/style-presets.md。以後は工程ごとに、その工程のファイル(壁打ち(中身)は phase-0-discussion.md の Z5) |
| B 要件定義から作る | common.md、handoff.md、writing/write-core.md、writing/phase-1-requirements.md、writing/style-presets.md | 壁打ち(中身)を行う場合:writing/phase-0-discussion.md の Z5。工程2:writing/phase-2-outline.md。工程3を自分で書く場合:writing/phase-3-writing.md |
| C レビュー | common.md、handoff.md、review/core.md、review/role-lead.md | 単独体制になった場合:担う役割の役割ファイル |
| D 改稿 | common.md、handoff.md、writing/write-core.md、writing/phase-4-revision.md | 規模が大の採用行がある場合:writing/phase-2-outline.md。要件定義書も依頼内容ファイルもない場合:writing/phase-1-requirements.md。改稿を自分で書く場合:writing/phase-3-writing.md |
| E 再検証 | common.md、handoff.md、review/core.md、review/role-lead.md | 単独体制になった場合:review/role-verifier.md |

- どの種類でも、最初に common.md を読む。全体の流れ(N6)、入口(N6.3)、役割(N7)、品質の基準(N9)は common.md にある。
- 作業フォルダの records/current.md(窓口の記録。common.md N7.6)があれば、ほかの記録より先に読む。
- 発言の先頭に、段階の印(common.md N6.5)を付ける。

## 3 始める前に確かめること

- author-style.md が渡されているか。渡されていない場合と、未記入の欄がある場合の進め方は、handoff.md の N4 に定めがある(Aでは、工程1に移るときに確かめる)。聞き取りを行う場合は、author-style-template.md を読む。
- C・D・E では、records/ フォルダ(handoff.md の N5.4)があるかを確かめる。2回目以降の回、改稿、再検証は、records/items.md(項目一覧)からほかの記録をたどる。
- サブエージェントの定義(agents/ の10ファイル)が `.claude/agents/` に置かれているか。置かれていない場合は、依頼者に伝える。使えない環境での進め方は、L3.2(レビュー)と W2.9(書く手順)に定めがある。

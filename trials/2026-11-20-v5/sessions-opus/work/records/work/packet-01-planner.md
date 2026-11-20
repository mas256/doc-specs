# 作業パケット 01:企画の担当(論点案と構成案を一度に。第1回)

## 重要な指示(先に読む)
- あなたは企画の担当(規格フォルダ agents/writing-planner.md)である。定義ファイルを最初に読み、そのとおりに動く。
- 使ってよい道具は Read、Grep、Glob、Write、Edit、WebSearch、WebFetch だけである(定義ファイルの道具に限るため)。
- 読んでよいのは、規格フォルダ /home/user/doc-specs/kakurenbo/doc-specs/ の中で定義ファイルが読めと言うファイルと、作業フォルダ /home/user/doc-specs/kakurenbo/work/ の中だけである。リポジトリのほかの場所は読まない(依頼者の指示「他のところに干渉したり読んだりしないでください」)。README.md、DESIGN.md、rationale.md、MANUAL.md は読まない(文書を作る会話は読まない定め)。
- ほかの担当は起動しない。本文は書かない。

## 共通
- 担当の種類と作業種別:企画の担当/論点案の作成と構成案の作成を一度に(小さい文書。writing/write-core.md W2.5)
- 規格フォルダ:/home/user/doc-specs/kakurenbo/doc-specs/
- 読むファイル:定義ファイルの定め(common.md、handoff.md、writing/write-core.md、writing/phase-2-points.md、writing/phase-3-outline.md)
- 入力:要件定義書 /home/user/doc-specs/kakurenbo/work/records/brief.md(承認済み)、author-style /home/user/doc-specs/kakurenbo/work/author-style.md(承認済み)、台帳 /home/user/doc-specs/kakurenbo/work/records/current.md(壁打ちの行。R-1〜R-5、P-1〜P-6、D-1〜D-5)
- 範囲:全体(本文は601字以上1000字以内の小論文。数段落)
- 台帳の番号:調べた結果は R-6 から、質問は Q-1 から、案は P-7 から、変更は C-1 から使う。

## この回(第1回)にすること
W2.5 により、Z5.3 の確かめを済ませてから points.md と outline.md を書く。確かめは窓口が検証担当とロールモデルの担当に頼むので、この回では次の3つだけを行う。
1. 選んだ切り口(要件定義書の切り口。台帳 P-6)を補強する調べ物(Z5.2)をし、論点案の下書きを /home/user/doc-specs/kakurenbo/work/records/work/points-draft.md に、Z5.4 の書式で書く(「確かめた結果」「読者から見て」の欄は「確かめ待ち」と書く)。題材の数は、1000字以内の小論文に見合うだけにする。
2. 検証担当に渡す、未確認の R の行の一覧(壁打ちの R-1〜R-5 のうち論点案で使うものと、新しく調べた R-6 以降)を返信に書く。
3. ロールモデルの担当に渡す作業パケットの中身(W2.12 の5)を返信に書く。

## 返す形
- ファイル:records/work/points-draft.md
- 返信:<台帳の行>…</台帳の行> で囲んだ行の案(R-6 以降など)、検証担当に渡す R の行の一覧、ロールモデルの担当への作業パケットの中身、決めてほしいこと(あれば承認の形で)。
- 止まる条件:定義ファイルのとおり。切り口を変えたくなった場合は、変えずに理由を返す(壁打ちへ戻るかは窓口が決める)。

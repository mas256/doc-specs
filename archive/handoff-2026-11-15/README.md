# 引き継ぎ一式(2026-11-15)

Claude Code のセッション(2026-11-12〜15)の成果と材料を、別のチャットへ引き継ぐための一式。このディレクトリだけで、作業の全体と現在の状態が分かるようにしてある。

## 最初に読むもの

1. `session-summary.md`:作業の全体のまとめ(時系列、決定、残っていること、所在の一覧)
2. `../proposals/flagship-redesign.md`:指示書の再設計の核(決定の正本)
3. `../trials/essay-2026-11/analysis-1.md`:小論文の試行の分析(最新の知見)
4. `integral/CLAUDE.md`:教科書 Integral の作業の手引き

## このディレクトリの中身

| 場所 | 中身 |
| --- | --- |
| `session-summary.md` | 作業の全体のまとめ(proposals/session-summary-2026-11.md の写し) |
| `integral/` | mas256/Integral(ブランチ rewrite/three-part)の写し:CLAUDE.md、author-style.md、records/(要件定義書、全体の草案、第I部・第II部の草案、claude.ai からの引き継ぎメモ)、claude-agents/(.claude/agents/ のサブエージェントの定義) |
| `materials/user-essays/` | 依頼者が書いた小論文5本(試行の比較対象) |
| `materials/integral-handoff/` | claude.ai からの引き継ぎ一式(00_START_HERE.md、setup.sh、当時の指示書の写し、history/)。history/ の会話の記録と指示書の修正案(doc-specs-fix-proposals-2026-11-11.md)は、このセッションでは読んでいない |
| `materials/integral-part1-c35a095.zip` | Integral 第I部の書き直し前の原稿(c35a095 から取り出したもの) |
| `materials/zenkashiki-conversation-log-2026-11-12.json` | 漸化式の教科書での冗長性の議論のログ |
| `materials/external-review-2026-11-13.json` | 外部の評価(第2版・第8版を対象とした F1〜F14、P1〜P18) |

## このディレクトリの外(同じリポジトリ)

| 場所 | 中身 |
| --- | --- |
| `../proposals/flagship-redesign-details.md` | 設計の経緯と候補(§0 に用語の採用形) |
| `../proposals/research-2026-11-14.md` | 先行研究と公開されている指示書の類の調査 |
| `../trials/essay-2026-11/` | 小論文の試行(お題、条件、AIの20本、助言ありの版、テーマだけの3本、作者を伏せた一式、記号の対応、分析) |
| `../trials/integral-1.5/versions.md` | Integral 1.5 の試行の3つの版(依頼者の判断待ち) |
| `../trials/zenkashiki-three-term.md` | 漸化式の3項間漸化式(付加項あり)の解法の議論 |
| `../trials/tools/endings.py` | 文末の集計スクリプト |
| `../README.md` ほか規格の本文 | 指示書(文書作成規格 第3版・文書レビュー規格 第9版)。本文はまだ再設計に合わせて書き換えていない |

## 現在の状態

- このリポジトリ(mas256/doc-specs)の作業は、すべてブランチ `ccr-084c6d83-fk3dnj` にある。main には入れていない。
- Integral の作業はブランチ `rewrite/three-part` にある。main には触れない(main の先頭 529eb49 の扱いは integral/CLAUDE.md を参照)。
- 漸化式の教科書(mas256/zenkashiki-no-chotaikei-publishing)には、このセッションでは変更を加えていない。
- モデルの既定:最上位は opus・effort high。fable は依頼者が指定したときだけ使う(fable の利用上限は 11月17日 13時(日本時間)に戻る)。Explore エージェントは haiku・effort medium。
- 依頼者の個人設定のプロンプトは廃止された。文書作成とレビューには、この指示書を使う。

## 次の一手の候補(依頼者の判断待ち)

1. 小論文の試行の第2回:現実の形の要件(伝えたいこと、読者、読者に起こしたいこと、分量の上限だけ)で、「要件に忠実」と「着眼を自由に選び、要件から一歩出た部分に印を付ける」の2条件を比べる。
2. 指示書への反映(2026-11-15 済):到達点に構成を書かない(R2.5、O3.8)/一歩出た案を AI提案として出させる(O3.9、M5.2の7)/分量は上限として与える(R2.6、M3.14)。経緯は writing/rationale.md の 1.4。着眼を評価する物差しは規格に入れず、試行の第2回で試す。
3. Integral 第I部:依頼者の修正の完了後に、3つの版(c35a095、1a373e8、依頼者の版)を比べる。第II部の草案の承認。
4. Integral 1.5 の試行への依頼者の判断。
5. 漸化式の3項間漸化式の解法を改める件(草案の項目の承認から)。

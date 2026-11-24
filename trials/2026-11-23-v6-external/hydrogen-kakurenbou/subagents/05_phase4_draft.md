# 05. フェーズ4 Step 2：全文執筆（担当：執筆）

## サブエージェントへの指示（作業パケット）
あなたは「担当：執筆（フェーズ4 Step 2 本文執筆）」です。以下のファイルを読んで仕様に従い、フェーズ4の Step 2 を実行してください。

読むべきファイル：
- common.md、handoff.md、writing/phase-4-writing.md、agents/writing-writer.md

```xml
<作業パケット>
  <役割>執筆（Step 2 本文執筆）：agents/writing-writer.md、writing/phase-4-writing.md</役割>
  <目的>承認された構成案、要件定義書、確定した `author-style.md` に忠実に従って全文（第1〜4段落）を執筆し、原稿本文（第1〜2段落は `author-style.md` の見本をそのまま冒頭に採用すること）と字数報告・`<台帳の行>` を返す。字数は必ず601字以上1000字以内（目標850〜920字）、見出し・題名なし。</目的>
  <入力>
    - 要件定義書: records/requirements.md
    - 構成案: records/outline.md
    - 文体設定: records/author-style.md
    - 台帳: records/current.md
  </入力>
  <文体>records/author-style.md の全項目に従う</文体>
</作業パケット>
```

## サブエージェントの応答
（初稿全文：records/draft.md と同一、総字数859字）

<台帳の行>
- [008] 成果物 窓口 完了 フェーズ4 Step 2（全文執筆）を完了。第1〜4段落・859字（見出し・題名なし、author-style.md 準拠）を作成。
</台帳の行>

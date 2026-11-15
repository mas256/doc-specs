#!/usr/bin/env bash
# 引き継ぎ一式をリポジトリに置く。コミットはしない(00_START_HERE.md の手順4で行う)。
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="${1:-}"

if [ -z "$REPO" ]; then
  echo "使い方: bash setup.sh <リポジトリのルート>" >&2; exit 1
fi
REPO="$(cd "$REPO" && pwd)"

if ! git -C "$REPO" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "停止: $REPO は git リポジトリではない。" >&2; exit 1
fi
if ! git -C "$REPO" remote -v | grep -qi "Integral"; then
  echo "停止: リモートに Integral が見当たらない。対象のリポジトリか確かめてほしい。" >&2; exit 1
fi
BRANCH="$(git -C "$REPO" rev-parse --abbrev-ref HEAD)"
if [ "$BRANCH" != "rewrite/three-part" ]; then
  echo "停止: 現在のブランチは $BRANCH。rewrite/three-part に切り替えてから実行してほしい。" >&2; exit 1
fi

# 1. 指示書一式を spec/ に置く
if [ -e "$REPO/spec" ] && [ ! -f "$REPO/spec/START.md" ]; then
  echo "停止: spec/ が既にあり、指示書一式ではない。上書きしないので、置き場所を利用者に確かめてほしい。" >&2; exit 1
fi
rm -rf "$REPO/spec"
mkdir -p "$REPO/spec"
cp -r "$SRC/doc-specs/." "$REPO/spec/"
echo "置いた: spec/(指示書一式)"

# 2. サブエージェント定義
mkdir -p "$REPO/.claude/agents"
cp "$SRC/doc-specs/agents/"*.md "$REPO/.claude/agents/"
echo "置いた: .claude/agents/ に $(ls "$SRC/doc-specs/agents/"*.md | wc -l) ファイル"

# 3. CLAUDE.md
MARK="<!-- handoff-2026-11-12 -->"
if [ -f "$REPO/CLAUDE.md" ]; then
  if grep -q "$MARK" "$REPO/CLAUDE.md"; then
    echo "そのまま: CLAUDE.md には引き継ぎの節が既にある"
  else
    { printf "\n%s\n" "$MARK"; cat "$SRC/CLAUDE.md"; } >> "$REPO/CLAUDE.md"
    echo "追記した: CLAUDE.md の末尾に引き継ぎの節"
  fi
else
  { printf "%s\n" "$MARK"; cat "$SRC/CLAUDE.md"; } > "$REPO/CLAUDE.md"
  echo "置いた: CLAUDE.md"
fi

# 4. 引き継ぎ資料
mkdir -p "$REPO/records"
cp "$SRC/HANDOFF.md" "$REPO/records/handoff-2026-11-12.md"
echo "置いた: records/handoff-2026-11-12.md"

echo "完了。git status で確かめてからコミットしてほしい。"

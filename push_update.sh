#!/bin/bash
# ================================================
# Richie's Journey — 差分プッシュスクリプト
# 実行方法: bash push_update.sh
# ================================================

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "📁 対象ディレクトリ: $REPO_DIR"
cd "$REPO_DIR"

git add .
git status
git commit -m "画像修正: 表紙画像・年表PNG追加、料理写真をWikimedia Commonsに変更"
git push

echo ""
echo "================================================"
echo "✅ 完了！GitHubへのプッシュが終わりました。"
echo "公開URL: https://richiehasegawa-hub.github.io/richies-journey/"
echo "================================================"

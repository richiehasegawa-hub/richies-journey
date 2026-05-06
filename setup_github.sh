#!/bin/bash
# ================================================
# Richie's Journey — GitHub Pages セットアップスクリプト
# 実行方法: bash setup_github.sh
# ================================================

set -e
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "📁 対象ディレクトリ: $REPO_DIR"
cd "$REPO_DIR"

# 既存の壊れた .git を削除して再初期化
echo "🔧 git 初期化..."
rm -rf .git
git init
git branch -m main
git config user.email "richie.hasegawa@gmail.com"
git config user.name "richiehasegawa-hub"
git config core.quotepath false

# ファイル追加・コミット
echo "📦 ファイルをステージング..."
git add .
echo "✅ コミット..."
git commit -m "初回公開: Richie's Journey 旅行ブック v6"

# リモート設定
echo "🔗 GitHubリモートを設定..."
git remote add origin https://github.com/richiehasegawa-hub/richies-journey.git

# プッシュ
echo "🚀 GitHubへプッシュ..."
git push -u origin main

echo ""
echo "================================================"
echo "✅ 完了！GitHubへのプッシュが終わりました。"
echo ""
echo "次のステップ: GitHub Pages を有効化してください"
echo "  1. https://github.com/richiehasegawa-hub/richies-journey"
echo "  2. Settings → Pages"
echo "  3. Source: Deploy from a branch"
echo "  4. Branch: main / (root) → Save"
echo ""
echo "公開URL予定:"
echo "  https://richiehasegawa-hub.github.io/richies-journey/"
echo "================================================"

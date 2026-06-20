#!/bin/bash
# build.sh - ポケモンクエストWeb版 ビルド・変換スクリプト

set -e

missionLog() {
    echo "[$(date +'%Y-%m-%dT%H:%M:%S')] [ACTION] $1"
}

missionLog "ビルド開始！対象のDEXファイルをスキャンするぞ！"

# outputディレクトリをクリアして初期化
rm -rf output_java output_js
mkdir -p output_java output_js

# .dexファイルがあればループ処理
for dex in *.dex; do
    if [ -f "$dex" ]; then
        missionLog "解析中: $dex..."
        jadx -d output_java "$dex"
    else
        missionLog "警告: .dexファイルが見つからない！"
    fi
done

missionLog "Javaソースの抽出完了！トランスパイルを開始するぞ！"

# トランスパイル実行
if [ -f "transpile.js" ]; then
    node transpile.js
fi

missionLog "ミッション完了！output_js/を確認せよ！"

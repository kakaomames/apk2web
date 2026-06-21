#!/bin/bash

rm -rf output_web

# missionLog関数
missionLog() {
    echo -e "[$(date '+%Y-%m-%d %H:%M:%S')] [\033[32mMISSION\033[0m] $1"
}

# 1. 探索とループ処理
find . -type d -path "*/resources/package_1/res" | while read -r res_dir; do
    parent_path=$(dirname "$(dirname "$(dirname "$res_dir")")")
    project_name=$(basename "$parent_path")
    output_dir="output_web/$project_name"
    json_path="$output_dir/bundle.json" # ここでパスを確定
    
    mkdir -p "$output_dir"
    missionLog "処理開始: [$project_name] -> $json_path"

    # Node.js: JSON集約
    node -e "
const fs = require('fs');
const path = require('path');
const resBundle = {};
const walkSync = (dir) => {
    fs.readdirSync(dir).forEach(file => {
        const fullPath = path.join(dir, file);
        if (fs.statSync(fullPath).isDirectory()) {
            walkSync(fullPath);
        } else if (path.extname(fullPath) === '.xml') {
            resBundle[path.relative(process.cwd(), fullPath)] = fs.readFileSync(fullPath, 'utf-8');
        }
    });
};
walkSync('$res_dir');
fs.writeFileSync('$json_path', JSON.stringify(resBundle, null, 2));
"
    missionLog "Step 1: [$project_name] JSON集約完了"

    # Python: 引数としてJSONパスを渡して実行
    python3 converter.py "$json_path" "$output_dir"
    missionLog "Step 2: [$project_name] Web化完了"
done

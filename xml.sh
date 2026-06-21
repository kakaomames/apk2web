#!/bin/bash

rm -rf output_web


# 隊長指示: 一括変換オペレーション開始！

missionLog() { echo -e "[$(date '+%Y-%m-%d %H:%M:%S')] [\033[32mMISSION\033[0m] $1"; }

# 1. 探索: 全てのapkのresフォルダを探す
find . -type d -path "*/resources/package_1/res" | while read -r res_dir; do
    
    # プロジェクト名抽出: <name>/resources/package_1/res
    # dirnameを3回で<name>まで遡る
    parent_path=$(dirname "$(dirname "$(dirname "$res_dir")")")
    project_name=$(basename "$parent_path")
    output_dir="output_web/$project_name"
    json_path="$output_dir/bundle.json"
    
    mkdir -p "$output_dir"
    missionLog "ターゲット発見: $project_name ($res_dir)"

    # 2. Node.js: そのres内の全XMLをJSONに集約
    node -e "
const fs = require('fs'); const path = require('path');
const resBundle = {};
const walkSync = (d) => {
    fs.readdirSync(d).forEach(f => {
        const full = path.join(d, f);
        if (fs.statSync(full).isDirectory()) walkSync(full);
        else if (path.extname(full) === '.xml') resBundle[path.relative(process.cwd(), full)] = fs.readFileSync(full, 'utf-8');
    });
};
walkSync('$res_dir');
fs.writeFileSync('$json_path', JSON.stringify(resBundle, null, 2));
"
    missionLog "Step 1: [$project_name] JSON集約完了"

    # 3. Python: 変換実行
    python3 converter.py "$json_path" "$output_dir"
    missionLog "Step 2: [$project_name] 全変換完了 -> $output_dir"
done

missionLog "全オペレーション終了！完了したぞ！"

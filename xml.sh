#!/bin/bash

# missionLog関数
missionLog() {
    echo -e "[$(date '+%Y-%m-%d %H:%M:%S')] [\033[32mMISSION\033[0m] $1"
}

# 1. 探索とループ処理
find . -type d -name "res" | while read -r res_dir; do
    # resフォルダの親ディレクトリ名をプロジェクト名として取得 (例: ./apk1/res -> project=apk1)
    project_name=$(basename "$(dirname "$res_dir")")
    output_dir="output_web/$project_name"
    
    missionLog "ターゲット発見: $res_dir (プロジェクト: $project_name)"
    
    # 出力先ディレクトリ作成
    mkdir -p "$output_dir"

    # 2. Node.js: JSON集約 (その都度生成)
    # 探索対象をそのres_dirに限定する
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
fs.writeFileSync('$output_dir/bundle.json', JSON.stringify(resBundle, null, 2));
"
    missionLog "Step 1: $project_name のJSON集約完了"

    # 3. Python: HTML変換 (その都度生成)
    python3 -c "
import json, os, xml.etree.ElementTree as ET
with open('$output_dir/bundle.json', 'r') as f:
    data = json.load(f)

for path, content in data.items():
    if 'res/layout' in path:
        try:
            root = ET.fromstring(content)
            # 簡易HTML化 (必要に応じてここを強化)
            html = f'<html><body><h1>{root.tag}</h1></body></html>'
            out_file = os.path.join('$output_dir', os.path.basename(path).replace('.xml', '.html'))
            with open(out_file, 'w', encoding='utf-8') as f:
                f.write(html)
        except: pass
"
    missionLog "Step 2: $project_name のWeb化完了！場所: $output_dir"
done

missionLog "全オペレーション終了！全てのresフォルダを処理したぞ！"

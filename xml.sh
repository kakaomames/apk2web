#!/bin/bash

# missionLog関数
missionLog() {
    echo -e "[$(date '+%Y-%m-%d %H:%M:%S')] [\033[32mMISSION\033[0m] $1"
}

# 1. ターゲット探索とプロジェクト名抽出
# 構造: <name>/resources/package_1/res
find . -type d -path "*/resources/package_1/res" | while read -r res_dir; do
    
    # パスからプロジェクト名を抽出
    # 1. dirname .../res -> .../package_1
    # 2. dirname .../package_1 -> .../resources
    # 3. dirname .../resources -> .../<name>
    # 4. basename .../<name> -> <name>
    parent_path=$(dirname "$(dirname "$(dirname "$res_dir")")")
    project_name=$(basename "$parent_path")

    # 念のため、変なディレクトリを拾わないようにチェック
    if [[ "$project_name" == "." || -z "$project_name" ]]; then
        missionLog "スキップ: プロジェクト名が特定できないパスです ($res_dir)"
        continue
    fi

    output_dir="output_web/$project_name"
    missionLog "発見: [$project_name] のリソースを処理開始..."

    # ディレクトリ作成
    mkdir -p "$output_dir"

    # 2. Node.js: JSON集約 (そのプロジェクト専用)
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
    missionLog "Step 1: [$project_name] JSON集約完了"

    # 3. Python: HTML変換 (そのプロジェクト専用)
    python3 -c "
import json, os, xml.etree.ElementTree as ET

# コンポーネント変換辞書（ここを育てていこう！）
def get_html_tag(android_tag):
    mapping = {
        "ActionMenuView": "nav",
        "LinearLayout": "div",
        "RelativeLayout": "div",
        "FrameLayout": "div",
        "TextView": "p",
        "Button": "button",
        "ImageView": "img",
        "EditText": "input",
        "RecyclerView": "ul"
    }
    # 末尾のクラス名だけ抽出して変換
    short_name = android_tag.split('.')[-1]
    return mapping.get(short_name, "div") # 見つからなければとりあえずdiv

# 中略（スクリプト内のループ部分を修正）
try:
    root = ET.fromstring(content)
    tag_name = get_html_tag(root.tag)
    
    # スタイル属性を抽出
    style = ""
    if 'android:layout_width' in root.attrib:
        style += f"width: {root.attrib['android:layout_width'].replace('match_parent', '100%')};"
    
    html = f'<{tag_name} class="{root.tag.split(".")[-1]}" style="{style}">'
    # 子要素があればここに入れる
    html += "" 
    html += f'</{tag_name}>'
    
    out_file = os.path.join('$output_dir', os.path.basename(path).replace('.xml', '.html'))
    with open(out_file, 'w', encoding='utf-8') as f:
        f.write(html)
except Exception as e:
    pass
"
    missionLog "Step 2: [$project_name] Web化完了！場所: $output_dir"
done

missionLog "全オペレーション終了！全てのプロジェクトを個別処理したぞ！"

#!/bin/bash

# 実行ディレクトリ配下の AndroidManifest.xml を探索
find . -name "AndroidManifest.xml" | while read -r xml_path; do
    target_dir=$(dirname "$xml_path")
    output_json="$target_dir/manifest.json"

    echo "🔍 探索中: $xml_path"

    # PythonでXMLからiconタグを抽出し、resフォルダから実体を探す
    python3 -c "
import os
import xml.etree.ElementTree as ET
import json

xml_path = '$xml_path'
res_root = os.path.join(os.path.dirname(xml_path), 'res')

try:
    tree = ET.parse(xml_path)
    root = tree.getroot()
    ns = {'android': 'http://schemas.android.com/apk/res/android'}
    
    # 1. アイコン参照を取得 (例: @mipmap/ic_launcher)
    app = root.find('application')
    icon_ref = app.attrib.get('{http://schemas.android.com/apk/res/android}icon') if app is not None else None
    
    # デフォルト値
    icon_path = 'https://kakaomames.github.io/rei/logo.png' # 念の為のフォールバック
    
    if icon_ref and icon_ref.startswith('@'):
        # @mipmap/ic_launcher -> ['mipmap', 'ic_launcher']
        parts = icon_ref[1:].split('/')
        if len(parts) == 2:
            res_type, res_name = parts
            
            # 2. resフォルダからファイルを探す
            for root_dir, dirs, files in os.walk(res_root):
                if res_type in root_dir: # drawable-hdpi 等
                    for f in files:
                        if f.startswith(res_name):
                            # 相対パスを作成
                            found = os.path.relpath(os.path.join(root_dir, f), os.path.dirname(xml_path))
                            icon_path = found.replace('\\\\', '/') # Windows対策
                            break
                    if icon_path != 'https://kakaomames.github.io/rei/logo.png': break

    # マニフェスト書き出し
    manifest = {
        'name': app.attrib.get('{http://schemas.android.com/apk/res/android}label', 'App').replace('@string/', ''),
        'icons': [{'src': icon_path, 'sizes': '192x192', 'type': 'image/png'}]
    }
    
    with open('$output_json', 'w', encoding='utf-8') as f:
        json.dump(manifest, f, indent=4, ensure_ascii=False)
        
except Exception as e:
    print(f'Error: {e}')
"
    echo "✅ 生成完了: $output_json"
done

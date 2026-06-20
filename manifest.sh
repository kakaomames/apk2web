#!/bin/bash

# 全ての AndroidManifest.xml を探索して manifest.json を生成
find . -name "AndroidManifest.xml" | while read -r xml_path; do
    xml_dir=$(dirname "$xml_path")
    output_json="$xml_dir/manifest.json"
    
    echo "🔍 処理中: $xml_path"

    python3 -c "
import os
import xml.etree.ElementTree as ET
import json
import glob

# AndroidManifest.xmlの場所からresフォルダを探す
def find_res_path(base_dir):
    for root, dirs, files in os.walk(base_dir):
        if 'res' in dirs:
            return os.path.join(root, 'res')
    return None

xml_path = '$xml_path'
base_dir = os.path.dirname(xml_path)
res_dir = find_res_path(base_dir)

if not res_dir:
    print(f'❌ resフォルダが見つかりません: {base_dir}')
    exit(1)

# XML解析
tree = ET.parse(xml_path)
root = tree.getroot()
ns = '{http://schemas.android.com/apk/res/android}'
app = root.find('application')

# 値の抽出補助関数
def get_string_from_xml(key):
    # key例: @string/app_name
    name = key.split('/')[-1]
    # 全てのvaluesフォルダ内のstrings.xmlを探す
    for s_file in glob.glob(os.path.join(res_dir, 'values*', 'strings.xml')):
        try:
            stree = ET.parse(s_file)
            for s in stree.findall('.//string'):
                if s.get('name') == name:
                    return s.text
        except: continue
    return 'UnknownApp'

# 値の抽出
label_ref = app.attrib.get(ns + 'label') if app is not None else None
app_name = get_string_from_xml(label_ref) if label_ref and label_ref.startswith('@') else 'App'

icon_ref = app.attrib.get(ns + 'icon') if app is not None else None
icon_path = 'https://kakaomames.github.io/rei/logo.png' # デフォルト
if icon_ref and icon_ref.startswith('@'):
    icon_name = icon_ref.split('/')[-1]
    # res/mipmap-* または drawable-* からファイルを探す
    found_files = glob.glob(os.path.join(res_dir, '*', f'{icon_name}.*'))
    if found_files:
        icon_path = os.path.relpath(found_files[0], base_dir)

# JSON出力
manifest = {
    'name': app_name,
    'short_name': app_name[:12],
    'start_url': 'index.html',
    'display': 'standalone',
    'icons': [{'src': icon_path, 'sizes': 'any', 'type': 'image/png'}]
}

with open('$output_json', 'w', encoding='utf-8') as f:
    json.dump(manifest, f, indent=4, ensure_ascii=False)
print(f'✅ 生成完了: $output_json (res: {res_dir})')
"
done

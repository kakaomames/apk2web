import json
import os
import sys
import xml.etree.ElementTree as ET
from collections import defaultdict

TARGET_LANG = "ja"
NS = "{http://schemas.android.com/apk/res/android}"

# 1. 文字列辞書構築（values -> values-ja で上書き）
def load_strings(data):
    string_map = {}
    # デフォルト読み込み
    for path, content in data.items():
        if 'values/strings.xml' in path:
            try:
                for s in ET.fromstring(content).findall('string'):
                    string_map[s.get('name')] = s.text or ""
            except: continue
    # 日本語上書き
    for path, content in data.items():
        if f'values-{TARGET_LANG}/strings.xml' in path:
            try:
                for s in ET.fromstring(content).findall('string'):
                    string_map[s.get('name')] = s.text or ""
            except: continue
    return string_map

# 2. テキスト解決
def resolve_text(text_val, string_map):
    if text_val and text_val.startswith('@string/'):
        return string_map.get(text_val.split('/')[-1], text_val)
    return text_val

# 3. 再帰的なHTML生成
def build_html(el, string_map):
    tag = el.tag.split('}')[-1]
    tag_map = {
        "LinearLayout": "div", "RelativeLayout": "div", "FrameLayout": "div",
        "TextView": "p", "Button": "button", "ImageView": "img", "View": "hr"
    }
    html_tag = tag_map.get(tag, "div")
    
    # 属性取得
    raw_text = el.attrib.get(NS + 'text', '')
    final_text = resolve_text(raw_text, string_map)
    if not final_text and el.text: final_text = el.text.strip()
    
    children = "".join([build_html(child, string_map) for child in el])
    return f'<{html_tag} class="{tag}">{final_text}{children}</{html_tag}>'

# 4. メイン処理
def main():
    if len(sys.argv) < 3: return
    json_path, output_dir = sys.argv[1], sys.argv[2]
    
    with open(json_path, 'r', encoding='utf-8') as f:
        data = json.load(f)

    # 共通CSSの生成
    common_css = ".LinearLayout { display: flex; flex-direction: column; } .RelativeLayout { position: relative; } .TextView { margin: 5px; }"
    with open(os.path.join(output_dir, 'common.css'), 'w', encoding='utf-8') as f:
        f.write(common_css)

    string_map = load_strings(data)

    for path, content in data.items():
        if 'res/layout' in path:
            try:
                root = ET.fromstring(content)
                filename = os.path.basename(path).replace('.xml', '')
                html_name = f"{filename}.html"
                css_name = f"{filename}.css"
                
                # HTML生成
                body = build_html(root, string_map)
                html = f'<html><head><link rel="stylesheet" href="common.css"><link rel="stylesheet" href="{css_name}"></head><body>{body}</body></html>'
                
                with open(os.path.join(output_dir, html_name), 'w', encoding='utf-8') as f: f.write(html)
                with open(os.path.join(output_dir, css_name), 'w', encoding='utf-8') as f: f.write(f"/* {filename} 固有のスタイル */")
                
                print(f"[SUCCESS] {html_name} & {css_name} を生成")
            except Exception as e:
                print(f"[ERROR] {path}: {e}")

if __name__ == "__main__":
    main()

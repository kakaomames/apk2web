import json
import os
import sys
import xml.etree.ElementTree as ET

TARGET_LANG = "ja"
NS = "{http://schemas.android.com/apk/res/android}"

# 1. クラス名の掃除機 (例: android.support.v7.widget.ActionMenuView -> ActionMenuView)
def clean_class_name(tag):
    full_name = tag.split('}')[-1]
    return full_name.split('.')[-1]

# 2. 画像マップ作成
def build_image_map(project_dir):
    image_map = {}
    res_path = os.path.join(project_dir, 'res')
    if not os.path.exists(res_path): return image_map
    for root, _, files in os.walk(res_path):
        for file in files:
            if file.endswith(('.png', '.jpg', '.webp', '.xml')):
                name = os.path.splitext(file)[0]
                image_map[name] = os.path.relpath(os.path.join(root, file), project_dir)
    return image_map

# 3. 文字列辞書
def load_strings(data):
    string_map = {}
    for path, content in data.items():
        if 'values/strings.xml' in path or f'values-{TARGET_LANG}/strings.xml' in path:
            try:
                for s in ET.fromstring(content).findall('string'):
                    string_map[s.get('name')] = s.text or ""
            except: continue
    return string_map

# 4. HTML構築エンジン
def build_html(el, string_map, image_map):
    class_name = clean_class_name(el.tag)
    # ここでHTMLタグにマッピング
    tag_map = {
        "LinearLayout": "div", "RelativeLayout": "div", "FrameLayout": "div",
        "TextView": "p", "Button": "button", "ImageView": "img", "View": "hr",
        "ActionMenuView": "nav", "ActionBarContextView": "div"
    }
    html_tag = tag_map.get(class_name, "div")
    
    # 属性処理
    raw_text = el.attrib.get(NS + 'text', '')
    final_text = string_map.get(raw_text.split('/')[-1], raw_text) if raw_text.startswith('@string/') else raw_text
    if not final_text and el.text: final_text = el.text.strip()
    
    # 画像処理
    extra_attrs = ""
    if class_name == "ImageView":
        src = el.attrib.get(NS + 'src', '')
        if src.startswith('@drawable/'):
            name = src.split('/')[-1]
            path = image_map.get(name, "assets/placeholder.png")
            extra_attrs = f' src="{path}"'
    
    children = "".join([build_html(child, string_map, image_map) for child in el])
    return f'<{html_tag} class="{class_name}"{extra_attrs}>{final_text}{children}</{html_tag}>'

# 5. メイン司令塔
def main():
    if len(sys.argv) < 3: return
    json_path, output_dir = sys.argv[1], sys.argv[2]
    project_root = os.path.abspath(os.path.join(os.path.dirname(json_path), '..', '..', '..')) # 調整が必要ならここを修正

    with open(json_path, 'r', encoding='utf-8') as f:
        data = json.load(f)

    # 事前準備
    image_map = build_image_map(project_root)
    string_map = load_strings(data)
    os.makedirs(output_dir, exist_ok=True)
    
    # 共通CSS
    with open(os.path.join(output_dir, 'common.css'), 'w', encoding='utf-8') as f:
        f.write(".LinearLayout { display: flex; flex-direction: column; }\n.ImageView { max-width: 100%; }")

    # 変換実行
    for path, content in data.items():
        if 'res/layout' in path:
            try:
                root = ET.fromstring(content)
                filename = os.path.basename(path).replace('.xml', '')
                css_name = f"{filename}.css"
                
                body = build_html(root, string_map, image_map)
                html = f'<html><head><link rel="stylesheet" href="common.css"><link rel="stylesheet" href="{css_name}"></head><body>{body}</body></html>'
                
                with open(os.path.join(output_dir, f"{filename}.html"), 'w', encoding='utf-8') as f: f.write(html)
                with open(os.path.join(output_dir, css_name), 'w', encoding='utf-8') as f: f.write(f"/* {filename} 固有のスタイル */")
                print(f"[OK] {filename}.html 生成")
            except Exception as e:
                print(f"[ERROR] {path}: {e}")

if __name__ == "__main__":
    main()

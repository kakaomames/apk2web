import json, os, sys, xml.etree.ElementTree as ET

# 優先言語設定
TARGET_LANG = "ja"

def load_strings(data):
    """ プロジェクト内のstrings.xmlを読み込み辞書化 """
    string_map = {}
    # 1. デフォルト (values/strings.xml)
    for path, content in data.items():
        if 'values/strings.xml' in path:
            for s in ET.fromstring(content).findall('string'):
                string_map[s.get('name')] = s.text or ""
    # 2. 指定言語 (values-ja/strings.xml) 上書き優先
    lang_dir = f"values-{TARGET_LANG}"
    for path, content in data.items():
        if lang_dir in path and 'strings.xml' in path:
            for s in ET.fromstring(content).findall('string'):
                string_map[s.get('name')] = s.text or ""
    return string_map

def resolve_text(text_val, string_map):
    if not text_val: return ""
    if text_val.startswith('@string/'):
        return string_map.get(text_val.split('/')[-1], text_val)
    return text_val

def build_html(el, string_map):
    tag = el.tag.split('}')[-1]
    html_tag = {"LinearLayout": "div", "TextView": "p", "Button": "button", "ImageView": "img"}.get(tag, "div")
    
    # テキスト解決
    raw_text = el.attrib.get('{http://schemas.android.com/apk/res/android}text', '')
    final_text = resolve_text(raw_text, string_map)
    if not final_text and el.text: final_text = el.text.strip()
    
    children = "".join([build_html(child, string_map) for child in el])
    return f'<{html_tag} class="{tag}">{final_text}{children}</{html_tag}>'

# メイン処理
json_path, output_dir = sys.argv[1], sys.argv[2]
with open(json_path, 'r', encoding='utf-8') as f:
    data = json.load(f)

# 辞書構築
string_map = load_strings(data)

# 変換実行
for path, content in data.items():
    if 'res/layout' in path:
        try:
            root = ET.fromstring(content)
            html = f"<html><body>{build_html(root, string_map)}</body></html>"
            out = os.path.join(output_dir, os.path.basename(path).replace('.xml', '.html'))
            with open(out, 'w', encoding='utf-8') as f: f.write(html)
        except: pass

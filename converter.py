import json, os, sys, xml.etree.ElementTree as ET

# 引数からパスを取得
json_path = sys.argv[1]
output_dir = sys.argv[2]

# タグとスタイルの変換マッピング
def build_element(el):
    tag_name = el.tag.split('.')[-1]
    html_tag = {"LinearLayout": "div", "TextView": "p", "Button": "button", "ImageView": "img"}.get(tag_name, "div")
    
    # 属性からCSSスタイルを生成 (簡易版)
    style = []
    width = el.attrib.get('{http://schemas.android.com/apk/res/android}layout_width', 'auto')
    if width == 'match_parent': style.append('width:100%')
    
    style_str = ";".join(style)
    
    # 子要素の再帰処理
    children_html = "".join([build_element(child) for child in el])
    
    return f'<{html_tag} class="{tag_name}" style="{style_str}">{el.text or ""}{children_html}</{html_tag}>'

# JSON読み込み
with open(json_path, 'r', encoding='utf-8') as f:
    data = json.load(f)

for path, content in data.items():
    if 'res/layout' in path:
        try:
            root = ET.fromstring(content)
            html_body = build_element(root)
            
            out_file = os.path.join(output_dir, os.path.basename(path).replace('.xml', '.html'))
            with open(out_file, 'w', encoding='utf-8') as f:
                f.write(f"<html><body>{html_body}</body></html>")
            print(f"[SUCCESS] {out_file} 生成完了")
        except Exception as e:
            print(f"[ERROR] {path}: {e}")

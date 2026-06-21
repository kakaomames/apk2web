import json, os, xml.etree.ElementTree as ET

# 変換ルール定義
def convert_anim_to_css(root):
    # XMLからCSSアニメーションへ変換
    duration = root.attrib.get('{http://schemas.android.com/apk/res/android}duration', '1000ms').replace('@android:integer/', '')
    from_alpha = root.attrib.get('{http://schemas.android.com/apk/res/android}fromAlpha', '0')
    to_alpha = root.attrib.get('{http://schemas.android.com/apk/res/android}toAlpha', '1')
    
    # CSS生成
    css = f"""@keyframes fade {{
        from {{ opacity: {from_alpha}; }}
        to {{ opacity: {to_alpha}; }}
    }}
    .animated {{
        animation: fade {duration}ms forwards;
    }}"""
    return css

def convert_layout_to_html(root):
    # レイアウト変換（既存ロジック）
    tag_name = root.tag.split('.')[-1]
    return f"<{tag_name} class='{tag_name}'>CONTENT</{tag_name}>"

# メイン処理
with open('bundle.json', 'r') as f:
    data = json.load(f)

for path, content in data.items():
    try:
        root = ET.fromstring(content)
        out_name = os.path.basename(path).replace('.xml', '.html')
        out_css_name = os.path.basename(path).replace('.xml', '.css')
        
        # パスによって変換モードを切り替え
        if 'res/layout' in path:
            html = convert_layout_to_html(root)
            with open(out_name, 'w', encoding='utf-8') as f: f.write(html)
            print(f"[LAYOUT] {out_name} を生成")
            
        elif 'res/anim' in path:
            css = convert_anim_to_css(root)
            with open(out_css_name, 'w', encoding='utf-8') as f: f.write(css)
            print(f"[ANIM] {out_css_name} を生成")
            
    except Exception as e:
        print(f"[ERROR] {path}: {e}")

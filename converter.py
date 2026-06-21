import json, os, sys, xml.etree.ElementTree as ET

# 引数からパスを取得
json_path = sys.argv[1]
output_dir = sys.argv[2]

def get_html_tag(android_tag):
    mapping = {
        "ActionMenuView": "nav", "LinearLayout": "div", "RelativeLayout": "div",
        "FrameLayout": "div", "TextView": "p", "Button": "button",
        "ImageView": "img", "EditText": "input", "RecyclerView": "ul"
    }
    return mapping.get(android_tag.split('.')[-1], "div")

def convert_anim_to_css(root):
    # CSSアニメーション生成ロジック
    return "@keyframes fade { from { opacity: 0; } to { opacity: 1; } }"

with open(json_path, 'r', encoding='utf-8') as f:
    data = json.load(f)

for path, content in data.items():
    try:
        root = ET.fromstring(content)
        out_base = os.path.basename(path).replace('.xml', '')
        
        if 'res/layout' in path:
            tag_name = get_html_tag(root.tag)
            html = f"<html><body><{tag_name} class='{root.tag.split('.')[-1]}'>CONTENT</{tag_name}></body></html>"
            with open(os.path.join(output_dir, f"{out_base}.html"), 'w', encoding='utf-8') as f:
                f.write(html)
        
        elif 'res/anim' in path:
            css = convert_anim_to_css(root)
            with open(os.path.join(output_dir, f"{out_base}.css"), 'w', encoding='utf-8') as f:
                f.write(css)
                
    except Exception as e:
        print(f"[ERROR] {path}: {e}")

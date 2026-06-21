import json, os, sys, xml.etree.ElementTree as ET

# 引数からパスを取得
json_path = sys.argv[1]
output_dir = sys.argv[2]

# タグとスタイルの変換マッピング
def build_element(el):
    tag_name = el.tag.split('.')[-1]
    html_tag = {"LinearLayout": "div", "TextView": "p", "Button": "button", "ImageView": "img"}.get(tag_name, "div")
    
    # 1. スタイルの抽出（既存ロジック）
    style = []
    width = el.attrib.get('{http://schemas.android.com/apk/res/android}layout_width', 'auto')
    if width == 'match_parent': style.append('width:100%')
    style_str = ";".join(style)
    
    # 2. 【重要】android:text 属性からテキストを取得
    # Androidの名前空間を指定して属性を探す
    android_text = el.attrib.get('{http://schemas.android.com/apk/res/android}text', '')
    
    # 3. テキストと子要素の結合
    content = android_text if android_text else (el.text or "")
    children_html = "".join([build_element(child) for child in el])
    
    return f'<{html_tag} class="{tag_name}" style="{style_str}">{content}{children_html}</{html_tag}>'

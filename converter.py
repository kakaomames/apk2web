import json
import os
import sys
import xml.etree.ElementTree as ET

# 1. Androidの名前空間を処理するためのヘルパー
def get_android_attr(el, attr_name):
    # Android特有の名前空間
    ns = "{http://schemas.android.com/apk/res/android}"
    # 名前空間付きキーと、そのままのキーの両方を探す
    return el.attrib.get(ns + attr_name, el.attrib.get(attr_name, ''))

# 2. 再帰的にHTMLタグを構築する関数
def build_html(el):
    # タグ名の抽出 (名前空間があれば除去)
    tag_name = el.tag.split('}')[-1]
    
    # マッピング辞書 (ここにどんどん追加していこう)
    html_tag = {
        "LinearLayout": "div", "RelativeLayout": "div", "FrameLayout": "div",
        "TextView": "p", "Button": "button", "ImageView": "img", 
        "EditText": "input", "ActionMenuView": "nav"
    }.get(tag_name, "div")

    # 属性の取得
    text_content = get_android_attr(el, 'text')
    # 子要素の再帰処理
    children_html = "".join([build_html(child) for child in el])
    
    # HTML生成
    return f'<{html_tag} class="{tag_name}">{text_content}{children_html}</{html_tag}>'

# 3. メイン処理
def main():
    if len(sys.argv) < 3:
        print("使い方: python converter.py <json_file> <output_dir>")
        return

    json_path = sys.argv[1]
    output_dir = sys.argv[2]

    with open(json_path, 'r', encoding='utf-8') as f:
        data = json.load(f)

    for file_path, xml_content in data.items():
        # レイアウトファイルのみ処理
        if 'res/layout' in file_path:
            try:
                # XMLパース
                root = ET.fromstring(xml_content)
                html_body = build_html(root)
                
                # 保存
                filename = os.path.basename(file_path).replace('.xml', '.html')
                os.makedirs(output_dir, exist_ok=True)
                with open(os.path.join(output_dir, filename), 'w', encoding='utf-8') as f:
                    f.write(f"<html><body>{html_body}</body></html>")
                print(f"[SUCCESS] {filename} を生成しました")
            except Exception as e:
                print(f"[ERROR] {file_path} の解析失敗: {e}")

if __name__ == "__main__":
    main()

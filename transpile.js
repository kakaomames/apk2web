const fs = require('fs');
const path = require('path');

function walk(dir, callback) {
    fs.readdirSync(dir).forEach(file => {
        const fullPath = path.join(dir, file);
        if (fs.statSync(fullPath).isDirectory()) {
            walk(fullPath, callback);
        } else {
            callback(fullPath);
        }
    });
}

const inputDir = './output_java';
const outputDir = './output_js';

// ファイルパスを保存して全クラスを把握
const classMap = {};
walk(inputDir, (filePath) => {
    if (filePath.endsWith('.java')) {
        const className = path.basename(filePath, '.java');
        classMap[className] = filePath.replace(inputDir, '').replace('.java', '.js');
    }
});

function transpile(javaCode) {
    let jsCode = javaCode;
    jsCode = jsCode.replace(/^(package|import)\s+/gm, '// $1 ');
    jsCode = jsCode.replace(/class\s+([a-zA-Z0-9_]+)/g, 'export class $1');
    jsCode = jsCode.replace(/(public|private|protected)\s+(static\s+)?([a-zA-Z0-9<>\[\]]+)\s+([a-zA-Z0-9_]+)/g, '$1 $2$4');
    jsCode = jsCode.replace(/System\.out\.println\((.*)\);/g, 'console.log($1);');
    jsCode = jsCode.replace(/public\s+([a-zA-Z0-9_]+)\(/g, 'constructor(');
    return jsCode;
}

// フォルダ構造を維持しながら再帰的に変換
walk(inputDir, (filePath) => {
    if (filePath.endsWith('.java')) {
        const javaContent = fs.readFileSync(filePath, 'utf8');
        const jsContent = transpile(javaContent);
        
        // 出力先パスを作成
        const relativePath = filePath.replace(inputDir, '');
        const outPath = path.join(outputDir, relativePath.replace('.java', '.js'));
        
        fs.mkdirSync(path.dirname(outPath), { recursive: true });
        fs.writeFileSync(outPath, jsContent);
        console.log(`[ACTION] 変換完了: ${relativePath}`);
    }
});

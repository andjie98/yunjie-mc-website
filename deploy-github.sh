#!/bin/bash

# 🚀 云界网站 - GitHub Pages 安全部署脚本

echo "🦞 云界 Minecraft 服务器网站 - GitHub Pages 部署"
echo "================================================"
echo ""

# 检查 git
if ! command -v git &> /dev/null; then
    echo "❌ 请先安装 git"
    exit 1
fi

cd /root/.openclaw/workspace/yunjie-mc-website

# 初始化 git 仓库
echo "📦 初始化仓库..."
git init
git add .
git commit -m "🦞 云界网站初版"
git branch -M main

echo ""
echo "========================================="
echo "✅ 本地准备完成！"
echo ""
echo "📝 接下来请手动操作："
echo ""
echo "1️⃣ 访问 https://github.com/new 创建新仓库"
echo "   仓库名：yunjie-mc-website"
echo "   设为公开 (Public)"
echo ""
echo "2️⃣ 运行以下命令（替换你的用户名）："
echo ""
echo "   git remote add origin https://github.com/你的用户名/yunjie-mc-website.git"
echo "   git push -u origin main"
echo ""
echo "3️⃣ 在仓库页面 → Settings → Pages"
echo "   Source 选择 'main' 分支"
echo "   保存"
echo ""
echo "4️⃣ 等待 1-2 分钟，访问："
echo "   https://你的用户名.github.io/yunjie-mc-website/"
echo ""
echo "========================================="
echo ""
echo "💡 提示：密码不要告诉任何人，包括我！"
echo "   刚才的密码建议修改一下更安全~"
echo ""

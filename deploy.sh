#!/bin/bash

# 🚀 云界网站 - 一键部署脚本

echo "🦞 云界 Minecraft 服务器网站 - 一键部署"
echo "========================================="
echo ""

# 检查 Node.js
if ! command -v node &> /dev/null; then
    echo "❌ 需要先安装 Node.js"
    echo "访问：https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js 已安装：$(node -v)"
echo ""

# 选择部署平台
echo "选择部署平台："
echo "1. Vercel（推荐，最快）"
echo "2. Netlify（简单）"
echo "3. GitHub Pages（完全免费）"
echo ""
read -p "请输入选项 (1-3): " choice

case $choice in
    1)
        echo ""
        echo "🚀 部署到 Vercel..."
        echo ""
        
        # 安装 Vercel CLI
        npm install -g vercel
        
        # 登录
        echo "请先登录 Vercel 账号（没有的话会引导注册）"
        vercel login
        
        # 部署
        cd /root/.openclaw/workspace/yunjie-mc-website
        vercel --prod
        
        echo ""
        echo "✅ 部署完成！访问上面显示的 URL"
        ;;
        
    2)
        echo ""
        echo "🎯 部署到 Netlify..."
        echo ""
        
        # 安装 Netlify CLI
        npm install -g netlify-cli
        
        # 登录
        echo "请先登录 Netlify 账号"
        netlify login
        
        # 部署
        cd /root/.openclaw/workspace/yunjie-mc-website
        netlify deploy --prod --dir=.
        
        echo ""
        echo "✅ 部署完成！"
        ;;
        
    3)
        echo ""
        echo "📦 部署到 GitHub Pages..."
        echo ""
        
        # 检查 git
        if ! command -v git &> /dev/null; then
            echo "❌ 需要先安装 git"
            exit 1
        fi
        
        cd /root/.openclaw/workspace/yunjie-mc-website
        
        # 初始化 git
        git init
        git add .
        git commit -m "🦞 云界网站初版"
        git branch -M main
        
        echo ""
        echo "📝 请在 GitHub 创建新仓库，然后运行："
        echo "git remote add origin https://github.com/你的用户名/yunjie-mc-website.git"
        echo "git push -u origin main"
        echo ""
        echo "然后在仓库 Settings → Pages 中启用"
        ;;
        
    *)
        echo "❌ 无效选项"
        exit 1
        ;;
esac

echo ""
echo "========================================="
echo "部署完成！🎉"

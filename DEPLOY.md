# 🚀 云界服务器网站 - 免费部署指南

## 方案一：GitHub Pages（推荐 ⭐）

### 步骤：

1. **创建 GitHub 仓库**
   - 访问 https://github.com/new
   - 仓库名：`yunjie-mc-website`
   - 设为公开（Public）

2. **上传文件**
   ```bash
   cd /root/.openclaw/workspace/yunjie-mc-website
   git init
   git add .
   git commit -m "Initial commit - 云界服务器网站"
   git branch -M main
   git remote add origin https://github.com/你的用户名/yunjie-mc-website.git
   git push -u origin main
   ```

3. **启用 GitHub Pages**
   - 进入仓库 → Settings → Pages
   - Source 选择 `main` 分支
   - 保存后等待 1-2 分钟

4. **访问网站**
   - 地址：`https://你的用户名.github.io/yunjie-mc-website/`
   - 完全免费，永久可用

---

## 方案二：Vercel（更快 🚀）

### 步骤：

1. **访问 Vercel**
   - https://vercel.com
   - 用 GitHub 账号登录

2. **导入项目**
   - 点击 "Add New Project"
   - 选择 `yunjie-mc-website` 仓库
   - 点击 "Deploy"

3. **访问网站**
   - 自动获得域名：`https://yunjie-mc-website.vercel.app`
   - 支持自定义域名（可选）

---

## 方案三：Netlify（简单 🎯）

### 步骤：

1. **访问 Netlify**
   - https://netlify.com
   - 注册/登录账号

2. **拖拽部署**
   - 直接把 `yunjie-mc-website` 文件夹拖到 Netlify
   - 自动部署完成

3. **访问网站**
   - 获得随机域名：`https://xxx-xxx-xxx.netlify.app`
   - 可在设置中自定义

---

## 自定义域名（可选）

如果有自己的域名，可以：

1. **Cloudflare（免费 DNS）**
   - 添加 A 记录指向托管平台
   - 启用免费 SSL

2. **Freenom（免费域名）**
   - https://freenom.com
   - 申请 .tk/.ml/.ga 等免费域名

---

## 推荐配置

**最佳组合：GitHub Pages + Cloudflare**
- ✅ 完全免费
- ✅ 自动 HTTPS
- ✅ 全球 CDN 加速
- ✅ 稳定可靠

---

## 快速命令

```bash
# 进入目录
cd /root/.openclaw/workspace/yunjie-mc-website

# 初始化 git
git init
git add .
git commit -m "云界网站初版"

# 后续更新
git add .
git commit -m "更新内容"
git push
```

---

## 需要帮助？

- GitHub Pages 文档：https://pages.github.com/
- Vercel 文档：https://vercel.com/docs
- Netlify 文档：https://docs.netlify.com/

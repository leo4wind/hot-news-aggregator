#!/bin/bash

# GitHub Pages 部署脚本
# 用于更新API数据并推送到GitHub

echo "🚀 开始部署到GitHub Pages..."

# 检查是否在github-pages目录
if [ ! -f "index.html" ]; then
    echo "❌ 请在github-pages目录下运行此脚本"
    exit 1
fi

# 更新API数据
echo "📊 更新API数据..."
cd ..
node fetch-apis.js
cp -r api-data github-pages/
cd github-pages

# 检查Git状态
echo "📋 检查Git状态..."
git status

# 添加所有更改
git add .

# 提交更改
echo "💾 提交更改..."
git commit -m "更新热点数据 - $(date '+%Y-%m-%d %H:%M:%S')"

# 推送到GitHub
echo "📤 推送到GitHub..."
git push origin main

echo "✅ 部署完成！"
echo "🌐 网站将在几分钟后更新："
echo "   https://[你的用户名].github.io/[仓库名]/"
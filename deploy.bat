@echo off
REM GitHub Pages 部署脚本 (Windows版本)
REM 用于更新API数据并推送到GitHub

echo 🚀 开始部署到GitHub Pages...

REM 检查是否在github-pages目录
if not exist "index.html" (
    echo ❌ 请在github-pages目录下运行此脚本
    pause
    exit /b 1
)

REM 更新API数据
echo 📊 更新API数据...
cd ..
node fetch-apis.js
xcopy /E /I /Y api-data github-pages\api-data
cd github-pages

REM 检查Git状态
echo 📋 检查Git状态...
git status

REM 添加所有更改
git add .

REM 提交更改
echo 💾 提交更改...
git commit -m "更新热点数据 - %date% %time%"

REM 推送到GitHub
echo 📤 推送到GitHub...
git push origin main

echo ✅ 部署完成！
echo 🌐 网站将在几分钟后更新：
echo    https://[你的用户名].github.io/[仓库名]/
pause
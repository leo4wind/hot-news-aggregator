# 全球热点聚合网站

一个静态的热点新闻聚合网站，展示来自多个平台的实时热点内容。

## 🌟 特性

- **60秒新闻** - 每日新闻摘要
- **天气预报** - 24小时详细天气预报，emoji图标显示
- **热搜榜单** - 覆盖8个主流平台：
  - 微博热搜
  - 抖音热搜
  - 百度热搜
  - 今日头条热榜
  - 知乎热榜
  - Hacker News
  - 小红书热榜
  - B站热门

## 🎨 设计特色

- **响应式布局** - 完美适配桌面端和移动端
- **现代UI设计** - 渐变背景、毛玻璃效果、流畅动画
- **实时数据** - 基于API的最新热点数据
- **无需服务器** - 纯静态网站，支持CDN加速

## 📱 技术栈

- **HTML5** - 语义化标签
- **CSS3** - Grid布局、Flexbox、CSS变量
- **JavaScript ES6+** - 原生JS，无需框架依赖
- **GitHub Pages** - 免费静态网站托管

## 🚀 本地运行

1. 克隆仓库到本地
2. 使用任意HTTP服务器访问根目录：
   ```bash
   # 使用Python
   python -m http.server 8000

   # 使用Node.js
   npx serve .

   # 使用PHP
   php -S localhost:8000
   ```
3. 访问 http://localhost:8000

## 📊 数据来源

- **API基础URL**: `https://60s.viki.moe/v2`
- **更新频率**: 手动更新（可扩展为自动更新）
- **数据格式**: JSON

## 🔄 更新数据

如需更新最新数据，需要：
1. 请求API获取最新数据
2. 更新`api-data/`目录下的JSON文件
3. 提交并推送到GitHub

## 📁 项目结构

```
.
├── index.html          # 主页面
├── styles/
│   └── common.css     # 样式文件
├── api-data/          # API数据文件
│   ├── news60s.json
│   ├── weibo.json
│   ├── douyin.json
│   ├── baidu.json
│   ├── toutiao.json
│   ├── zhihu.json
│   ├── hacker-news.json
│   ├── rednote.json
│   ├── bili.json
│   └── weather.json
└── README.md          # 项目说明
```

## 🌐 部署说明

本网站已配置为GitHub Pages，访问地址：
`https://[你的用户名].github.io/[仓库名]/`

## 📄 许可证

MIT License - 可自由使用和修改

## 🤝 贡献

欢迎提交Issue和Pull Request！

---

*最后更新: 2025-10-31*
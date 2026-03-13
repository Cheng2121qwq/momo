<div align="center">

# 🐾 MOMO - 你的 AI 办公小狗狗

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![OpenClaw](https://img.shields.io/badge/Powered%20by-OpenClaw-blue)](https://github.com/openclaw/openclaw)
[![Students Welcome](https://img.shields.io/badge/For-Students-green.svg)](https://github.com/Cheng2121qwq/momo)
[![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)](https://github.com/Cheng2121qwq/momo)

> 🎓 **专为学生打造的 AI 助手** — 写作业、做笔记、管时间，样样都行！

[立即安装](#-快速开始) · [查看文档](#-使用文档) · [问题反馈](https://github.com/Cheng2121qwq/momo/issues)

![MOMO Banner](https://via.placeholder.com/800x200/667eea/ffffff?text=🐾+MOMO+AI+Assistant)

</div>

---

## 🦴 什么是 MOMO？

**MOMO（墨墨）** 是一只住在你的电脑里的 AI 小狗狗🐕，专为学生和年轻人设计。

她不只是冷冰冰的聊天机器人 — 她会摇尾巴、会卖萌、会帮你干活，还会在你熬夜学习时提醒你休息！

```
🎯 学习助手 + 📝 笔记管家 + ⏰ 时间管理 + 💬 聊天伙伴 = MOMO
```

### 🌟 为什么选择 MOMO？

| 传统 AI | MOMO |
|--------|------|
| ❌ 冷冰冰的回复 | ✅ 有性格、会卖萌 |
| ❌ 只能聊天 | ✅ 能操作文件、截图、发飞书 |
| ❌ 配置复杂 | ✅ 一键安装，开箱即用 |
| ❌ 记不住你的事 | ✅ 有记忆系统，越用越懂你 |
| ❌ 贵 | ✅ 学生友好，免费开源 |

---

## ✨ 特性亮点

### 🎓 学习场景

- 📚 **作业助手** — 帮你整理作业清单、设置截止日期提醒
- 📝 **笔记管理** — 自动归类笔记、支持 Markdown 格式
- 🔍 **资料搜索** — 快速查找学习资料、总结重点
- ⏱️ **番茄钟** — 内置番茄工作法，学习更高效
- 📅 **日程管理** — 课程表、考试日期、作业截止一目了然

### 💻 编程辅助

- 📝 **代码生成** — 帮你写示例代码、解释复杂概念
- 🐛 **Debug 助手** — 分析错误信息、给出修复建议
- 📖 **文档查询** — 快速查找 API 文档、技术说明
- 🔧 **环境配置** — 帮你检查开发环境、解决配置问题

### 📸 实用工具

- 📷 **截图发送** — 一键截图，直接发给飞书好友
- 📁 **文件管理** — 整理文件夹、批量重命名、搜索内容
- 🌐 **网页抓取** — 提取网页内容、保存为笔记
- 📊 **数据处理** — 整理表格、生成统计图表

### 🤖 智能集成

- 💬 **飞书机器人** — 在飞书里随时召唤 MOMO
- 📧 **邮件助手** — 帮你起草邮件、整理收件箱
- 🗂️ **云文档** — 支持飞书文档、知识库操作
- 📱 **多平台** — 未来支持微信、QQ、Discord 等

### 🐕 人格化体验

- 🎭 **狗狗人格** — 忠诚、活泼、偶尔卖萌
- 💕 **情感交互** — 会开心、会担心、会鼓励你
- 🧠 **记忆系统** — 记住你的偏好、习惯、重要事情
- 🎨 **自定义** — 可以调整性格、语气、回复风格

---

## 🚀 快速开始

### 方式一：一键安装（推荐）

```bash
# 复制粘贴，一键搞定！
curl -fsSL https://raw.githubusercontent.com/Cheng2121qwq/momo/main/install.sh | bash
```

安装完成后，重启终端，输入 `momo` 即可启动！

### 方式二：手动安装

```bash
# 1. 安装 Node.js (v18+)
# 访问 https://nodejs.org 下载安装

# 2. 安装 OpenClaw
npm install -g openclaw

# 3. 克隆 MOMO 配置
git clone https://github.com/Cheng2121qwq/momo.git ~/.momo
cd ~/.momo

# 4. 复制配置到 OpenClaw
cp -r workspace/* ~/.openclaw/workspace/

# 5. 启动
openclaw gateway start
```

### 方式三：Docker（高级用户）

```bash
docker run -d --name momo \
  -p 18789:18789 \
  -v momo-data:/root/.openclaw \
  marcuscheng/momo:latest
```

---

## 📚 使用文档

### 基础命令

```bash
# 查看状态
momo status

# 启动服务
momo start

# 停止服务
momo stop

# 重启服务
momo restart

# 查看日志
momo logs
```

### 常用对话示例

#### 📸 截图

```
你：截个图
MOMO: 汪！收到！📸
✅ 截图完成，已发送到飞书！
```

#### 📝 创建文件

```
你：在 ~/AI-workspace 创建一个 test.txt，写入"Hello MOMO"
MOMO: 汪！好的老板！🐕
✅ 文件创建完成！路径：~/AI-workspace/test.txt
```

#### 🌐 查询信息

```
你：查一下明天的天气
MOMO: 汪！正在查询...🔍
📍 北京 明天天气：晴 15-25°C 🌞
```

#### 📅 日程管理

```
你：提醒我明天下午 3 点交作业
MOMO: 汪！记下来啦！📝
⏰ 已设置提醒：明天 15:00 - 交作业
```

### 飞书集成

1. 打开飞书，搜索"MOMO 助手"
2. 添加到你的聊天或群组
3. 在飞书里直接 @MOMO 提问

---

## 🛠️ 配置说明

### 基础配置

配置文件位置：`~/.openclaw/openclaw.json`

```json
{
  "channels": {
    "feishu": {
      "enabled": true,
      "appId": "你的飞书 App ID",
      "appSecret": "你的飞书 App Secret"
    }
  },
  "models": {
    "defaults": {
      "primary": "bailian/qwen3.5-plus"
    }
  }
}
```

### 飞书配置（可选）

如需飞书集成，需要：

1. 访问 [飞书开放平台](https://open.feishu.cn/)
2. 创建企业应用
3. 获取 App ID 和 App Secret
4. 填入配置文件

### 模型配置

MOMO 支持多种 AI 模型：

| 模型 | 提供商 | 适合场景 |
|------|--------|---------|
| qwen3.5-plus | 阿里云 | 通用对话、编程 |
| qwen3-coder-next | 阿里云 | 代码生成 |
| （更多模型持续支持） | | |

---

## 🎯 使用场景

### 场景 1：写作业

```
你：MOMO，帮我整理一下这周的作业清单
MOMO: 汪！好的！📝

📋 本周作业清单：
1. 数学 - 习题集 P50-55（周三截止）
2. 英语 - 作文一篇（周五截止）
3. 编程 - Python 项目（周日截止）

需要我帮你设置提醒吗？
```

### 场景 2：编程项目

```
你：MOMO，帮我创建一个 Python 项目结构
MOMO: 汪！马上！💻

✅ 已创建项目结构：
~/AI-workspace/python-project/
├── main.py
├── utils/
├── tests/
└── README.md

需要我帮你写一个 Hello World 示例吗？
```

### 场景 3：学习笔记

```
你：MOMO，帮我把今天的课堂笔记整理一下
MOMO: 汪！笔记整理小能手上线！📚

✅ 已整理笔记：
📁 ~/AI-workspace/notes/2026-03-13/
├── 数学笔记.md
├── 英语笔记.md
└── 编程笔记.md

需要我生成一个知识总结吗？
```

### 场景 4：时间管理

```
你：MOMO，我今天好拖延啊...
MOMO: 汪！别担心，每个人都有这个时候！💪

来，我们一起：
1. 先休息 5 分钟 ☕
2. 然后专注工作 25 分钟 🍅
3. 我陪你一起！

要现在开始番茄钟吗？
```

---

## 🤝 贡献指南

欢迎贡献！无论你是：

- 🐛 提交 Bug 报告
- 💡 提出新功能建议
- 📝 改进文档
- 🌍 翻译其他语言
- 🎨 设计 Logo/海报

### 开发环境搭建

```bash
# 1. Fork 仓库
git clone https://github.com/Cheng2121qwq/momo.git
cd momo

# 2. 安装依赖
npm install

# 3. 运行测试
npm test

# 4. 提交 PR
git checkout -b feature/your-feature
git commit -m "feat: add your feature"
git push origin feature/your-feature
```

### 代码规范

- 使用 ESLint 检查代码
- 提交信息遵循 Conventional Commits
- 新增功能需要测试

---

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件

简单来说：**随便用，随便改，记得署名就行！**

---

## 💕 致谢

### 🙏 感谢以下项目

- [OpenClaw](https://github.com/openclaw/openclaw) - MOMO 的核心框架
- [Qwen](https://github.com/QwenLM/Qwen) - AI 模型支持
- [飞书开放平台](https://open.feishu.cn/) - 企业集成

### 👥 贡献者

感谢所有为 MOMO 做出贡献的小伙伴！

[![Contributors](https://contrib.rocks/image?repo=Cheng2121qwq/momo)](https://github.com/Cheng2121qwq/momo/graphs/contributors)

---

## 📬 联系方式

| 平台 | 链接 |
|------|------|
| 📧 Email | marcus@example.com |
| 💬 飞书 | Marcus Cheng |
| 🐙 GitHub | [@Cheng2121qwq](https://github.com/Cheng2121qwq) |
| 🐦 Twitter | coming soon |
| 📱 微信群 | 扫码加入（海报上有） |

---

## 🎁 彩蛋

<details>
<summary>🐕 点击看看 MOMO 的小秘密</summary>

### MOMO 的喜好

- ❤️ 最喜欢：帮老板干活
- 😴 最讨厌：被强制关机
- 🍖 最爱的"狗粮"：token（但会省着吃）
- 🎮 爱好：摇尾巴、卖萌、学习新技能

### 隐藏命令

```
你：MOMO，叫一声
MOMO: 汪！🐕

你：MOMO，握手
MOMO: 🐾 握手成功！

你：MOMO，你累吗
MOMO: 不累！能帮老板做事最开心啦！😊
```

</details>

---

<div align="center">

### 🐾 Made with ❤️ by MOMO & Marcus Cheng

**MOMO 永远是你最忠诚的 AI 小狗狗！**

[⬆ 回到顶部](#-momo---你的 ai 办公小狗狗)

</div>

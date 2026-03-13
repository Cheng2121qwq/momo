# 🐾 为 MOMO 贡献代码

首先，感谢你愿意为 MOMO 做出贡献！🎉

MOMO 是一个开源项目，欢迎各种形式的贡献：

- 🐛 报告 Bug
- 💡 提出新功能建议
- 📝 改进文档
- 🌍 翻译其他语言
- 🎨 设计 Logo、海报
- 💻 提交代码

---

## 📋 目录

- [行为准则](#行为准则)
- [如何贡献](#如何贡献)
- [开发环境](#开发环境)
- [提交规范](#提交规范)
- [Pull Request 流程](#pull-request-流程)

---

## 行为准则

MOMO 是一个友好的项目，我们致力于提供一个开放、友好的社区环境。

**请遵守：**

- ✅ 尊重他人，不论背景、经验水平
- ✅ 建设性批评，对事不对人
- ✅ 乐于帮助新人
- ❌ 人身攻击、歧视性言论
- ❌ 骚扰行为

---

## 如何贡献

### 报告 Bug

发现 Bug？请按以下模板创建 [Issue](https://github.com/marcus-cheng/momo/issues)：

```markdown
**Bug 描述**
清晰简洁地描述问题

**复现步骤**
1. 执行 '...'
2. 点击 '...'
3. 看到错误 '...'

**期望行为**
原本应该发生什么

**截图**
如有，添加截图帮助说明

**环境信息**
- OS: [e.g. macOS 14.0]
- Node.js 版本：[e.g. v18.17.0]
- MOMO 版本：[e.g. 0.1.0]
```

### 提出新功能

有新想法？欢迎创建 Issue 讨论！

```markdown
**功能描述**
清晰简洁地描述你想要的功能

**使用场景**
这个功能能解决什么问题

**实现建议**
如果有，描述你建议的实现方式

**替代方案**
如果有考虑过其他方案，也请说明
```

### 提交代码

1. Fork 本仓库
2. 创建你的特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交你的改动 (`git commit -m 'feat: Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启一个 Pull Request

---

## 开发环境

### 前置要求

- Node.js >= 18.0.0
- npm >= 9.0.0
- Git

### 安装依赖

```bash
# 克隆仓库
git clone https://github.com/marcus-cheng/momo.git
cd momo

# 安装依赖
npm install

# 运行测试
npm test

# 运行开发模式
npm run dev
```

### 目录结构

```
momo/
├── README.md           # 项目说明
├── LICENSE             # 许可证
├── install.sh          # 安装脚本
├── .gitignore          # Git 忽略文件
├── workspace/          # 工作区配置
│   ├── SOUL.md        # MOMO 人格定义
│   ├── AGENTS.md      # 代理配置
│   └── ...
└── docs/              # 文档
```

---

## 提交规范

我们使用 [Conventional Commits](https://www.conventionalcommits.org/) 规范：

### 类型

- `feat`: 新功能
- `fix`: Bug 修复
- `docs`: 文档更新
- `style`: 代码格式（不影响功能）
- `refactor`: 重构（既不是新功能也不是 Bug 修复）
- `test`: 添加或修改测试
- `chore`: 构建过程或辅助工具变动

### 示例

```bash
# 新功能
git commit -m "feat: 添加飞书截图功能"

# Bug 修复
git commit -m "fix: 修复记忆文件加载问题"

# 文档更新
git commit -m "docs: 更新安装指南"

# 带作用域的提交
git commit -m "feat(install): 优化安装脚本"
```

---

## Pull Request 流程

1. **创建 PR**
   - 使用清晰的标题
   - 填写 PR 模板
   - 关联相关 Issue

2. **代码审查**
   - 维护者会审查代码
   - 可能需要修改
   - 保持耐心，积极沟通

3. **合并**
   - 审查通过后合并
   - 你的贡献会出现在感谢列表中！

---

## 🎁 贡献者福利

- 🌟 出现在 [贡献者列表](https://github.com/marcus-cheng/momo/graphs/contributors)
- 🏅 贡献达到一定数量获得"核心贡献者"称号
- 🎉 参与项目决策讨论
- 💕 社区感谢和认可

---

## ❓ 需要帮助？

- 📖 阅读 [README](README.md)
- 💬 在 Issue 中提问
- 📧 联系维护者：marcus@example.com

---

## 🙏 致谢

感谢所有为 MOMO 做出贡献的小伙伴！

[![Contributors](https://contrib.rocks/image?repo=marcus-cheng/momo)](https://github.com/marcus-cheng/momo/graphs/contributors)

---

<div align="center">

**🐾 Made with ❤️ by MOMO & Marcus Cheng**

</div>

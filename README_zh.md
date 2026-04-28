# NVS Node.js 版本管理器技能

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![技能类型：开发工具](https://img.shields.io/badge/技能类型-开发工具-blue)]()

这是一个专为 Lingma Agent 设计的综合技能，用于通过 NVS（Node Version Switcher）管理 Node.js 版本。该技能提供智能指导，帮助你在 Windows、macOS 和 Linux 上安装、切换和管理多个 Node.js 版本。

## 🎯 这是什么？

这是一个 **Lingma Agent 技能** - 一个专门的知识包，教导 AI 助手如何帮助你使用 NVS 管理 Node.js 版本。当你与 Lingma 交互并提到 Node.js 版本管理时，此技能会自动激活以提供专家级指导。

## ✨ 功能特性

- 🚀 **跨平台支持**：适用于 Windows、macOS 和 Linux
- 📦 **版本管理**：轻松安装、切换和删除 Node.js 版本
- 🔄 **自动切换**：根据项目需求自动切换版本
- 🏷️ **别名管理**：为不同的 Node.js 版本创建有意义的别名
- 🌐 **远程配置**：支持自定义下载源（夜间构建等）
- 📚 **完整文档**：包含完整的命令参考和实用示例
- 🛠️ **实用脚本**：提供常用任务的即用型脚本

## 📁 项目结构

```
nvs-node-version-switcher/
├── SKILL.md                    # 主技能定义（供 Lingma Agent 使用）
├── README.md                   # 英文说明文档
├── README_zh.md                # 中文说明文档（本文件）
├── REFERENCE.md                # 详细命令参考
├── EXAMPLES.md                 # 实用使用示例
├── RELEASE_NOTES.md            # v1.0.0 发布说明
├── QUICK_REFERENCE.md          # 快速参考指南
├── CREATION_SUMMARY.md         # 技能创建设计文档
├── TEST_REPORT.md              # 测试结果和验证报告
├── DEPLOYMENT_CONFIRMATION.md  # 部署确认文档
├── LICENSE                     # MIT 许可证
├── .gitignore                  # Git 忽略规则
└── scripts/                    # 实用脚本
    ├── check_nvs_status.sh     # 检查 NVS 安装状态
    ├── install_nvs.sh          # 自动安装 NVS
    └── validate_skill.sh       # 验证技能结构
```

## 🚀 快速开始

### 前置要求

- Git Bash、PowerShell 或任何 POSIX 兼容的 shell
- 网络连接（用于下载 Node.js 版本）

### 在 Lingma Agent 中使用

1. **安装技能**（如果尚未安装）：
   ```bash
   # 技能将在 Lingma 中自动可用
   # Lingma 用户无需手动安装
   ```

2. **触发技能**，通过询问以下问题：
   - "如何切换 Node.js 版本？"
   - "安装 Node.js 18 LTS"
   - "为我的项目设置 NVS"
   - "管理多个 Node.js 版本"

### 手动安装 NVS

如果你想直接使用 NVS（不通过 Lingma）：

#### Windows
```powershell
# 使用 winget（Windows 11+）
winget install jasongin.nvs

# 或使用 chocolatey
choco install nvs
```

#### macOS/Linux
```bash
export NVS_HOME="$HOME/.nvs"
git clone https://github.com/jasongin/nvs "$NVS_HOME"
. "$NVS_HOME/nvs.sh" install
```

## 💡 使用示例

### 基础版本管理

```bash
# 安装最新 LTS 版本
nvs add lts

# 切换到特定版本
nvs use 18.20.0

# 设置默认版本
nvs link 18.20.0

# 列出已安装的版本
nvs ls
```

### 高级功能

```bash
# 启用自动版本切换
nvs auto on

# 创建别名
nvs alias myproject 18.20.0

# 使用特定版本运行命令
nvs run 18.20.0 --version

# 迁移全局包
nvs migrate 16.20.0 18.20.0
```

### 使用实用脚本

```bash
# 检查 NVS 安装状态
bash scripts/check_nvs_status.sh

# 验证技能结构
bash scripts/validate_skill.sh

# 自动安装 NVS（macOS/Linux）
bash scripts/install_nvs.sh
```

## 📖 文档

- **[SKILL.md](SKILL.md)** - 主技能定义，包含快速入门指南
- **[REFERENCE.md](REFERENCE.md)** - 完整的命令参考，包含所有选项
- **[EXAMPLES.md](EXAMPLES.md)** - 真实场景的使用示例和工作流
- **[README.md](README.md)** - 英文版本说明文档
- **[RELEASE_NOTES.md](RELEASE_NOTES.md)** - v1.0.0 发布说明
- **[QUICK_REFERENCE.md](QUICK_REFERENCE.md)** - 快速参考卡片
- **[TEST_REPORT.md](TEST_REPORT.md)** - 测试结果和验证报告

## 🎯 何时使用此技能

当你在以下情况时，技能会自动激活：

- 需要安装或切换 Node.js 版本
- 想要设置开发环境
- 处理具有不同 Node.js 要求的项目
- 需要管理版本别名
- 遇到 Node.js 版本兼容性问题
- 询问关于 NVS、nvm 或 Node.js 版本管理的问题

## 🔧 平台特定说明

### Windows + Git Bash
- 大多数 NVS 命令在 Git Bash 中正常工作
- 为了更好的兼容性，使用 `nvs run` 而不是 `nvs exec`
- 如需完整功能支持，建议使用 PowerShell

### PowerShell vs Command Prompt
- PowerShell 提供更好的集成和功能
- 某些高级功能可能在 Command Prompt 中无法工作
- 使用 PowerShell 进行自动版本切换（`nvs auto`）

## 🧪 测试

所有功能已在沙箱环境中测试：

✅ 核心功能（版本切换、安装等）  
✅ 实用脚本执行  
✅ 跨平台兼容性  
✅ 技能结构验证  

详见 [TEST_REPORT.md](TEST_REPORT.md) 获取详细测试结果。

## 📊 统计数据

- **总文件数**: 14
- **总行数**: ~1,500+
- **SKILL.md 大小**: 192 行（符合 <500 最佳实践 ✅）
- **Description 长度**: 310 字符（符合 <350 要求 ✅）
- **支持平台**: Windows、macOS、Linux
- **测试状态**: 所有测试通过 ✅

## 🤝 贡献

欢迎贡献！请随时提交 Pull Request。对于重大更改，请先打开 issue 讨论你想要更改的内容。

1. Fork 本仓库
2. 创建你的特性分支（`git checkout -b feature/AmazingFeature`）
3. 提交你的更改（`git commit -m 'Add some AmazingFeature'`）
4. 推送到分支（`git push origin feature/AmazingFeature`）
5. 开启一个 Pull Request

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 🔗 相关资源

- [NVS 官方仓库](https://github.com/jasongin/nvs)
- [Node.js 官方网站](https://nodejs.org/)
- [Lingma Agent 技能文档](https://lingma.aliyun.com/)

## 🙏 致谢

- NVS 工具由 [Jason Ginchereau](https://github.com/jasongin) 开发
- 灵感来自 nvm（Node Version Manager）
- 遵循 Lingma Agent Skill 最佳实践构建

## 📝 版本历史

### v1.0.0 (2026-04-28)
- 初始发布
- 完整的 NVS 技能实现
- 跨平台支持
- 全面的文档
- 所有功能经过测试和验证

## 👤 作者

**zhuzeyu22**
- GitHub: https://github.com/zhuzeyu22
- 仓库: https://github.com/zhuzeyu22/nvs-node-version-switcher

---

**为开发者社区用心制作 ❤️**

*最后更新: 2026-04-28*

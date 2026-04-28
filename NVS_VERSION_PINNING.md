# NVS 版本固定说明

## 📌 使用的 NVS 版本

本技能使用定制的 NVS 仓库和固定版本 tag，以确保稳定性和一致性。

### 仓库信息

- **仓库地址**: https://github.com/zhuzeyu22/nvs.git
- **固定 Tag**: `v1.7.1-zhuzeyu22`
- **基础版本**: NVS v1.7.1

## 🔧 为什么使用固定 Tag？

1. **稳定性保证**: 固定版本确保所有用户使用相同的 NVS 版本
2. **可重现性**: 避免因 NVS 更新导致的行为变化
3. **自定义支持**: 可以添加特定于项目的定制功能
4. **版本控制**: 更好地控制依赖版本

## 📥 安装命令

### Windows (PowerShell)

```powershell
$env:NVS_HOME="$env:LOCALAPPDATA\nvs"
git clone https://github.com/zhuzeyu22/nvs.git "$env:NVS_HOME" --branch v1.7.1-zhuzeyu22 --single-branch
. "$env:NVS_HOME\nvs.ps1" install
```

### macOS/Linux

```bash
export NVS_HOME="$HOME/.nvs"
git clone https://github.com/zhuzeyu22/nvs.git "$NVS_HOME" --branch v1.7.1-zhuzeyu22 --single-branch
. "$NVS_HOME/nvs.sh" install
```

### Docker

```dockerfile
RUN export NVS_HOME="/root/.nvs" && \
    git clone https://github.com/zhuzeyu22/nvs.git "$NVS_HOME" --branch v1.7.1-zhuzeyu22 --single-branch && \
    . "$NVS_HOME/nvs.sh" install && \
    nvs add 18.20.0 && \
    nvs use 18.20.0
```

## 🔄 如何更新到新版本？

如果需要更新到新的固定版本：

1. 在 https://github.com/zhuzeyu22/nvs 仓库创建新的 tag
2. 更新所有文档中的 tag 引用
3. 测试新版本兼容性
4. 提交更新

示例：
```bash
# 在 nvs 仓库中
git tag v1.8.0-zhuzeyu22
git push origin v1.8.0-zhuzeyu22

# 在本技能仓库中更新所有引用
# 将 v1.7.1-zhuzeyu22 替换为 v1.8.0-zhuzeyu22
```

## 📝 已更新的文件

以下文件已更新为使用定制仓库和固定 tag：

- ✅ SKILL.md
- ✅ README.md
- ✅ README_zh.md
- ✅ EXAMPLES.md
- ✅ QUICK_REFERENCE.md
- ✅ RELEASE_NOTES.md
- ✅ DEPLOYMENT_CONFIRMATION.md
- ✅ CREATION_SUMMARY.md
- ✅ scripts/install_nvs.sh
- ✅ scripts/check_nvs_status.sh

## ⚠️ 注意事项

1. **首次使用**: 需要确保 https://github.com/zhuzeyu22/nvs 仓库存在且包含 `v1.7.1-zhuzeyu22` tag
2. **网络访问**: 确保可以访问 GitHub
3. **Git 要求**: 需要 Git 客户端支持 `--branch` 和 `--single-branch` 参数

## 🔍 验证安装

安装完成后，验证 NVS 版本：

```bash
nvs --version
# 应该显示: 1.7.1
```

## 📞 问题反馈

如果在使用定制 NVS 仓库时遇到问题，请：

1. 检查 tag 是否存在: https://github.com/zhuzeyu22/nvs/tags
2. 查看 NVS 官方文档: https://github.com/jasongin/nvs
3. 在本技能仓库提交 Issue

---

*最后更新: 2026-04-28*
*NVSTag: v1.7.1-zhuzeyu22*

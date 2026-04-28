# 创建 NVS Tag 操作指南

## 📋 任务说明

需要在 https://github.com/zhuzeyu22/nvs 仓库创建固定版本 tag `v1.7.1-zhuzeyu22`

## 🔧 操作步骤

### 方法一：使用 Git 命令行（推荐）

```bash
# 1. 克隆你的 NVS 仓库
git clone https://github.com/zhuzeyu22/nvs.git
cd nvs

# 2. 确保在 main/master 分支
git checkout main
# 或者
git checkout master

# 3. 拉取最新代码
git pull origin main

# 4. 创建 tag
git tag v1.7.1-zhuzeyu22

# 5. 推送 tag 到 GitHub
git push origin v1.7.1-zhuzeyu22

# 6. 验证 tag 是否创建成功
git tag -l | grep zhuzeyu22
```

### 方法二：使用 GitHub Web 界面

1. 访问: https://github.com/zhuzeyu22/nvs/releases
2. 点击 "Draft a new release" 或 "Create a new release"
3. 填写信息：
   - **Tag version**: `v1.7.1-zhuzeyu22`
   - **Target**: 选择 main/master 分支或特定 commit
   - **Release title**: `NVS v1.7.1 (zhuzeyu22 custom)`
   - **Description**: 
     ```
     Custom NVS build based on v1.7.1
     
     This is a fixed version tag for the nvs-node-version-switcher skill.
     Based on original NVS v1.7.1 by Jason Ginchereau.
     ```
4. 点击 "Publish release"

### 方法三：使用 GitHub CLI

```bash
# 1. 安装 GitHub CLI (如果未安装)
# Windows: winget install GitHub.cli
# macOS: brew install gh
# Linux: 参考 https://cli.github.com/

# 2. 登录 GitHub
gh auth login

# 3. 克隆仓库
gh repo clone zhuzeyu22/nvs
cd nvs

# 4. 创建并推送 tag
git tag v1.7.1-zhuzeyu22
git push origin v1.7.1-zhuzeyu22

# 5. 创建 Release（可选）
gh release create v1.7.1-zhuzeyu22 \
  --title "NVS v1.7.1 (zhuzeyu22 custom)" \
  --notes "Custom NVS build based on v1.7.1 for nvs-node-version-switcher skill"
```

## ✅ 验证步骤

创建 tag 后，请验证：

### 1. 检查 Tag 是否存在

访问: https://github.com/zhuzeyu22/nvs/tags

应该能看到 `v1.7.1-zhuzeyu22` tag

### 2. 测试克隆指定版本

```bash
# 测试能否成功克隆指定 tag
export NVS_HOME="$HOME/.nvs-test"
git clone https://github.com/zhuzeyu22/nvs.git "$NVS_HOME" --branch v1.7.1-zhuzeyu22 --single-branch

# 验证克隆成功
cd "$NVS_HOME"
git describe --tags
# 应该输出: v1.7.1-zhuzeyu22

# 清理测试目录
cd ..
rm -rf "$NVS_HOME"
```

### 3. 验证 NVS 功能

```bash
# 完整测试安装流程
export NVS_HOME="$HOME/.nvs"
git clone https://github.com/zhuzeyu22/nvs.git "$NVS_HOME" --branch v1.7.1-zhuzeyu22 --single-branch
. "$NVS_HOME/nvs.sh" install

# 验证 NVS 版本
nvs --version
# 应该输出: 1.7.1
```

## 📝 Tag 命名规范

- **格式**: `v{版本号}-{标识}`
- **示例**: `v1.7.1-zhuzeyu22`
- **含义**: 
  - `v1.7.1`: 基于 NVS v1.7.1
  - `zhuzeyu22`: 你的 GitHub 用户名标识

## ⚠️ 注意事项

1. **确保仓库可访问**: 确认 https://github.com/zhuzeyu22/nvs 仓库存在且公开
2. **基于正确的提交**: tag 应该基于稳定的提交（建议是最新的 main/master）
3. **不要重复创建**: 如果 tag 已存在，需要先删除再重新创建
4. **权限要求**: 需要对该仓库有写入权限

## 🔄 如果 Tag 已存在

如果需要更新已存在的 tag：

```bash
# 1. 删除本地 tag
git tag -d v1.7.1-zhuzeyu22

# 2. 删除远程 tag
git push origin :refs/tags/v1.7.1-zhuzeyu22

# 3. 重新创建 tag
git tag v1.7.1-zhuzeyu22

# 4. 重新推送
git push origin v1.7.1-zhuzeyu22
```

## 📞 问题排查

### 问题 1: 网络连接失败
```
fatal: unable to access 'https://github.com/zhuzeyu22/nvs.git/': 
Recv failure: Connection was reset
```

**解决方案**:
- 检查网络连接
- 配置代理（如果需要）
- 尝试使用 GitHub CLI
- 使用 GitHub Web 界面创建

### 问题 2: 权限不足
```
ERROR: Permission to zhuzeyu22/nvs.git denied
```

**解决方案**:
- 确认你拥有该仓库的写入权限
- 检查 GitHub token 权限
- 使用 SSH 而不是 HTTPS

### 问题 3: Tag 已存在
```
fatal: tag 'v1.7.1-zhuzeyu22' already exists
```

**解决方案**:
- 参见上面的"如果 Tag 已存在"部分
- 或者使用不同的 tag 名称

## 🎯 完成后的下一步

创建 tag 后：

1. ✅ 验证 tag 创建成功
2. ✅ 测试克隆和安装流程
3. ✅ 更新技能文档（如需要）
4. ✅ 通知用户可以使用

## 📚 相关资源

- **NVS 官方仓库**: https://github.com/jasongin/nvs
- **你的 NVS 仓库**: https://github.com/zhuzeyu22/nvs
- **技能仓库**: https://github.com/zhuzeyu22/nvs-node-version-switcher
- **Git Tag 文档**: https://git-scm.com/book/en/v2/Git-Basics-Tagging

---

*创建时间: 2026-04-28*
*目标 Tag: v1.7.1-zhuzeyu22*

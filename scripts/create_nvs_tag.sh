#!/bin/bash
# create_nvs_tag.sh - 自动创建 NVS tag 的脚本

set -e

echo "=== NVS Tag 创建脚本 ==="
echo ""

# 配置
REPO_URL="https://github.com/zhuzeyu22/nvs.git"
TAG_NAME="v1.7.1-zhuzeyu22"
TEMP_DIR="/tmp/nvs-tag-temp"

echo "📦 仓库: $REPO_URL"
echo "🏷️  Tag: $TAG_NAME"
echo ""

# 检查是否已存在临时目录
if [ -d "$TEMP_DIR" ]; then
    echo "⚠️  清理旧的临时目录..."
    rm -rf "$TEMP_DIR"
fi

# 克隆仓库
echo "🔄 克隆仓库..."
git clone "$REPO_URL" "$TEMP_DIR"
cd "$TEMP_DIR"

# 检查当前分支
echo "📍 当前分支:"
git branch

# 创建 tag
echo ""
echo "🏷️  创建 tag: $TAG_NAME"
git tag "$TAG_NAME"

# 推送 tag
echo "📤 推送 tag 到 GitHub..."
git push origin "$TAG_NAME"

# 验证
echo ""
echo "✅ 验证 tag:"
git tag -l | grep "$TAG_NAME"

echo ""
echo "🎉 完成！"
echo ""
echo "请访问以下链接验证:"
echo "https://github.com/zhuzeyu22/nvs/tags"
echo ""

# 清理
echo "🧹 清理临时目录..."
cd /tmp
rm -rf "$TEMP_DIR"

echo "✨ 所有操作完成！"

#!/bin/bash
# Unsloth CN - 中国网络环境快速启动脚本
# China Network Startup Script for Unsloth CN

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Source the China environment configuration
if [ -f "$SCRIPT_DIR/.env.china" ]; then
    echo "✅ 正在加载国内镜像配置..."
    source "$SCRIPT_DIR/.env.china"
else
    echo "❌ 未找到 .env.china 配置文件"
    exit 1
fi

echo "🚀 启动 Unsloth Studio (端口 8888)..."
unsloth studio -p 8888

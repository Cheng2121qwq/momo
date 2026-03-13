#!/bin/bash

# 🐾 MOMO 一键安装脚本
# 专为学生打造的 AI 办公小狗狗
# 
# 使用方法:
# curl -fsSL https://raw.githubusercontent.com/Cheng2121qwq/momo/main/install.sh | bash

set -e  # 遇到错误立即退出

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logo
print_logo() {
    echo -e "${BLUE}"
    cat << 'EOF'
 __  __ 
|  \/  |
| |\/| |
| |  | |
|_|  |_|
        
   🐾 MOMO AI Assistant
EOF
    echo -e "${NC}"
}

# 打印成功信息
print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

# 打印警告信息
print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

# 打印错误信息
print_error() {
    echo -e "${RED}❌ $1${NC}"
}

# 打印信息
print_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

# 检查是否已安装 Node.js
check_node() {
    if command -v node &> /dev/null; then
        local version=$(node -v)
        print_success "Node.js 已安装：$version"
        return 0
    else
        print_warning "未检测到 Node.js"
        return 1
    fi
}

# 检查是否已安装 npm
check_npm() {
    if command -v npm &> /dev/null; then
        local version=$(npm -v)
        print_success "npm 已安装：$version"
        return 0
    else
        print_warning "未检测到 npm"
        return 1
    fi
}

# 检查是否已安装 OpenClaw
check_openclaw() {
    if command -v openclaw &> /dev/null; then
        local version=$(openclaw -v 2>&1 | head -1)
        print_success "OpenClaw 已安装：$version"
        return 0
    else
        print_warning "未检测到 OpenClaw"
        return 1
    fi
}

# 安装 Node.js（macOS）
install_node_macos() {
    print_info "正在通过 Homebrew 安装 Node.js..."
    if command -v brew &> /dev/null; then
        brew install node
        print_success "Node.js 安装完成"
    else
        print_error "未检测到 Homebrew，请先安装 Homebrew"
        print_info "访问：https://brew.sh"
        exit 1
    fi
}

# 安装 OpenClaw
install_openclaw() {
    print_info "正在安装 OpenClaw..."
    npm install -g openclaw
    if [ $? -eq 0 ]; then
        print_success "OpenClaw 安装完成"
    else
        print_error "OpenClaw 安装失败"
        exit 1
    fi
}

# 创建 MOMO 配置目录
setup_momo_config() {
    print_info "正在设置 MOMO 配置..."
    
    local momo_dir="$HOME/.momo"
    local workspace_dir="$HOME/.openclaw/workspace"
    
    # 创建目录
    mkdir -p "$momo_dir"
    mkdir -p "$workspace_dir"
    
    print_success "配置目录创建完成"
}

# 克隆 MOMO 配置（如果有）
clone_momo_config() {
    print_info "正在克隆 MOMO 配置..."
    
    # 这里可以克隆远程配置
    # git clone https://github.com/Cheng2121qwq/momo-config.git ~/.momo
    
    print_success "配置克隆完成（示例）"
}

# 配置飞书（可选）
setup_feishu() {
    echo ""
    print_info "是否配置飞书集成？(y/n)"
    read -r response
    
    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        print_info "请访问飞书开放平台创建应用：https://open.feishu.cn/"
        print_info "然后编辑 ~/.openclaw/openclaw.json 填入 App ID 和 App Secret"
    else
        print_info "已跳过飞书配置，可以稍后手动配置"
    fi
}

# 启动 MOMO
start_momo() {
    echo ""
    print_info "是否现在启动 MOMO？(y/n)"
    read -r response
    
    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        print_info "正在启动 MOMO..."
        openclaw gateway start
        print_success "MOMO 已启动！"
    fi
}

# 打印完成信息
print_completion() {
    echo ""
    echo "========================================"
    print_success "MOMO 安装完成！🎉"
    echo "========================================"
    echo ""
    print_info "下一步："
    echo "1. 配置飞书（可选）：编辑 ~/.openclaw/openclaw.json"
    echo "2. 启动 MOMO: openclaw gateway start"
    echo "3. 开始使用：在飞书中与 MOMO 对话"
    echo ""
    print_info "文档：https://github.com/Cheng2121qwq/momo"
    print_info "问题反馈：https://github.com/Cheng2121qwq/momo/issues"
    echo ""
    print_info "🐾 MOMO 永远是你最忠诚的 AI 小狗狗！"
    echo ""
}

# 主函数
main() {
    print_logo
    
    echo "🐾 欢迎使用 MOMO 一键安装脚本！"
    echo ""
    
    # 检查系统
    print_info "正在检查系统环境..."
    
    # 检查 Node.js
    if ! check_node; then
        if [[ "$OSTYPE" == "darwin"* ]]; then
            install_node_macos
        else
            print_error "请手动安装 Node.js: https://nodejs.org/"
            exit 1
        fi
    fi
    
    # 检查 npm
    if ! check_npm; then
        print_error "npm 未安装，请先安装 npm"
        exit 1
    fi
    
    # 检查 OpenClaw
    if ! check_openclaw; then
        install_openclaw
    fi
    
    # 设置配置目录
    setup_momo_config
    
    # 克隆配置（如果有）
    # clone_momo_config
    
    # 配置飞书（可选）
    setup_feishu
    
    # 启动 MOMO（可选）
    start_momo
    
    # 打印完成信息
    print_completion
}

# 运行主函数
main

#!/bin/bash

# Function to print in blue
print_blue() {
  local timestamp
  timestamp=$(date "+%Y-%m-%d %H:%M:%S")
  echo -e "$timestamp @joi: \033[34m$1\033[0m"
}

# Function to check if a command exists
check_command() {
  if ! command -v "$1" &>/dev/null; then
    print_blue "$1 未安装"
    return 1
  else
    print_blue "$1 已安装"
    return 0
  fi
}

# 安装 Homebrew
install_homebrew() {
  local command
  command="brew"
  if ! check_command $command; then
    print_blue "Homebrew 正在安装..."
    sudo NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    if check_command $command; then
      print_blue "Homebrew 安装成功"
    else
      print_blue "Homebrew 安装失败，退出安装"
      exit 1
    fi
  fi
}

install_git() {
  local command
  command="git"
  if (! check_command $command); then
    print_blue "git 正在安装..."
    brew install git
    if check_command $command; then
      print_blue "git 安装成功"
    else
      print_blue "git 安装失败，退出安装"
      exit 1
    fi
  fi
}

# 安装 n 包管理器
install_n() {
  local command
  command="n"
  if ! check_command $command; then
    print_blue "$command 正在安装..."
    if ! check_command $command; then
      print_blue "Homebrew 未安装, 尝试使用 crul 安装"
      curl -L https://bit.ly/n-install | bash
    else
      brew install n
    fi

    if check_command $command; then
      print_blue "$command  安装成功"
    else
      print_blue "$command  安装失败，退出安装"
      exit 1
    fi
  fi
}

install_pnpm() {
  local command
  command="pnpm"
  if ! check_command $command; then
    print_blue "pnpm 正在安装..."
    curl -fsSL https://get.pnpm.io/install.sh | sh -

    if check_command $command; then
      print_blue "$command 安装成功"
    else
      print_blue "$command 安装失败，退出安装"
      exit 1
    fi
  fi
}

# 执行安装步骤
install_homebrew
install_n
install_pnpm

print_blue "所有工具安装成功！"

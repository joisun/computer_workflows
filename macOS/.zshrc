export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890
alias ll='ls -la'
alias la='ls -A'
alias l='ls'
alias wk='cd ~/workspace'
alias p='pnpm'
alias pi='pnpm install'
alias pa='pnpm add'

# pnpm
export PNPM_HOME="/Users/joi/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

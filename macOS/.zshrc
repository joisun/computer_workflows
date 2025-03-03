alias ll='ls -la'
alias la='ls -A'
alias l='ls'

alias wk='cd ~/Desktop/workspace'
alias td='cd ~/Desktop'
alias ss='cd ~/Desktop/studyspace'
alias pj='cd ~/Desktop/projects'

alias p='pnpm'
alias pi='pnpm install'
alias pa='pnpm add'
alias pubip='curl ipinfo.io'



# pnpm
export PNPM_HOME="/Users/joi/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Added by Windsurf
export PATH="/Users/joi-com/.codeium/windsurf/bin:$PATH"


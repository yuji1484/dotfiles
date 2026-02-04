# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="af-magic"

# Settings
DISABLE_AUTO_TITLE="true"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Language
export LANG=ja_JP.UTF-8

# alias
function cdls() {
  builtin cd "$1" && ls -G;
}
alias cd=cdls
alias cdd='cd ~/Desktop'
alias cddot='cd ~/dotfiles'
alias ..='cd ..'
alias ...='cd ../..'
alias ls='ls -F'
alias la='ls -a'
alias ll='ls -lGa'
alias vi='vim'
alias t='tmux'
alias ide="~/.tmux/ide.sh"

## git
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'

## docker
alias dcu='docker compose up'
alias dcua='docker compose up app'

## terraform
alias tf='terraform'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# fzf
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 30% --border'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Local bin
export PATH="$HOME/.local/bin:$PATH"
[ -f "$HOME/.local/bin/env" ] && . "$HOME/.local/bin/env"

# Cursor
export PATH="/Applications/Cursor.app/Contents/Resources/app/bin:$PATH"

# Antigravity
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"

# Kiro integration
[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# Local settings (not tracked in git)
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

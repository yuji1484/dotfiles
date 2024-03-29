# Set language
export LANG=ja_JP.UTF-8

# setting PATH for macpornj
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH

# setting PATH for macport
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# setting PATH for nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# setting nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# setting PATH for grep
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# setting PATH for my shell script
export PATH="$PATH:~/.script"

# setting PATH for tmux command
export PATH="$PATH:~/.tmux"

export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# setting aws_cli
export PATH="/usr/local/aws/bin:$PATH"
complete -C '/usr/local/bin/aws_completer' aws

# I absolutely use bash.
export BASH_SILENCE_DEPRECATION_WARNING=1

# setting git 
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

if [ $UID -eq 0 ]; then
    PS1='\u:\w$(__git_ps1)\n$ '
else
    PS1='\u:\w$(__git_ps1)\n$ '
fi

# alias
function cdls() {
  cd $1;
  ls -G;
}
alias cd=cdls
alias cdd='cd ~/Desktop'
alias cddot='cd ~/dotfiles'
alias vidot='vi ~/dotfiles'
alias cdcheet='cd ~/Desktop/study/cheat_sheet'
alias ..='cd ..'
alias ...='cd ../..'
alias ls='ls -F'
alias la='ls -a'
alias ll='ls -lGa'
alias vi='vim'
## tmux
alias t='tmux'
alias ide="~/.tmux/ide.sh"
## git
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
## aws
alias assume='source ~/dotfiles/_assume.sh'
## docker 
alias dcu='docker compose up'
alias dcua='docker compose up app'
## trraform
alias tf='terraform'

# command history
shopt -s histappend
HISTSIZE=1000000
HISTFILESIZE=1000000

# pronpt
# 出力の後に改行を入れる
function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
PROMPT_COMMAND='add_line'

# SHELL LOGIN WITH TMUX / If not running interactively, do not do anything
# [[ $- != *i* ]] && return
# [[ -z "$TMUX" ]] && exec tmux

# settings for fzf
export PATH="$PATH:$HOME/.fzf/bin"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 30% --border'
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Set language
export LANG=ja_JP.UTF-8
 
# Setting PATH for macpornj
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH

# Setting PATH for macport
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Setting PATH for nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# settint PATH for pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.7.4/bin:${PATH}"

# Setting PATH for rbenv
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"

# Setting PATH for my shell script
export PATH="$PATH:~/.script"

# setting PATH for tmux command
export PATH="$PATH:~/.tmux"

# Setting aws_cli
export PATH="/usr/local/aws/bin:$PATH"
complete -C '/usr/local/aws/bin/aws_completer' aws
export AWS_DEFAULT_PROFILE=cm-ishibashi.yuji

# I absolutely use bash.
export BASH_SILENCE_DEPRECATION_WARNING=1

# alias
function cdls() {
  cd $1;
  ls -G;
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
export PS1='\u:\w \n\$ '

# SHELL LOGIN WITH TMUX / If not running interactively, do not do anything
# [[ $- != *i* ]] && return
# [[ -z "$TMUX" ]] && exec tmux

# Settings for fzf
export PATH="$PATH:$HOME/.fzf/bin"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 30% --border'
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

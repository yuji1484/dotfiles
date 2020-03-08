# Set language
export LANG=ja_JP.UTF-8
 
# Setting PATH for macpornj
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH

# Setting PATH for nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# settint PATH for pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7.4/bin:${PATH}"
export PATH

# Setting PATH for rbenv
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"

# Setting PATH for my_shell_script
PATH="$PATH:~/dotfiles/.my_shell_script"

# エイリアス 
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

# コマンド履歴設定
shopt -s histappend
HISTSIZE=1000000
HISTFILESIZE=1000000

# SHELL LOGIN WITH TMUX / If not running interactively, do not do anything
# [[ $- != *i* ]] && return
# [[ -z "$TMUX" ]] && exec tmux

# Settings for fzf
export PATH="$PATH:$HOME/.fzf/bin"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 30% --border'
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

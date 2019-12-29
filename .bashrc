# ALIAS
alias cdd='cd ~/Desktop'
alias ..='cd ..'
alias ll='ls -la'
alias lla='ls -la'
alias t='tmux'


# SHELL LOGIN WITH TMUX / If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux

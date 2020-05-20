#!/bin/sh

echo 'start initialize!!!!'

echo 'start cleaning setting files'
[ -f ~/.zshrc ] && rm ~/.zshrc
[ -f ~/.zprofile ] && rm ~/.zprofile
[ -f ~/.bashrc ] && rm ~/.bashrc
[ -f ~/.bash_profile ] && rm ~/.bash_profile
[ -f ~/.vimrc ] && rm ~/.vimrc
[ -d ~/.vim ] && rm -r ~/.vim
echo 'finish cleaning setting files'

# synbolic link
DOTPATH=~/dotfiles
for f in .??*
do
    [ "$f" = ".git" ] && continue
    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew install git
brew install fzf
brew install tmux
brew install tig
brew install lazygit
brew install awscli
brew install rbenv
brew install pyenv
brew install nodenv

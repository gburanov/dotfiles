#!/bin/bash
set -x #echo on

shopt -s dotglob;
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp -R $DIR/.oh-my-zsh/* $HOME/.oh-my-zsh/
cp -R $DIR/.vim/* $HOME/.vim/

cp -R $DIR/fonts/* $HOME/Library/Fonts/

# Install atom packages
apm install --packages-file atom-packages.txt

# Git aliases
git config --global alias.lg1 "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset)  %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"
git config --global alias.lg2 "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
git config --global alias.lg '!"git lg1"'
git config --global url."git@github.com:".insteadOf "https://github.com/"

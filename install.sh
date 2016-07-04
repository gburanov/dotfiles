#!/bin/bash
set -x #echo on

shopt -s dotglob;
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp -R $DIR/.oh-my-zsh/* $HOME/.oh-my-zsh/
cp -R $DIR/.vim/* $HOME/.vim/

cp -R $DIR/fonts/* $HOME/Library/Fonts/


# Install atom packages
apm install --packages-file atom-packages.txt
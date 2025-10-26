#!/bin/bash
set -x #echo on

#Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install apps I need
brew install zsh
brew install --cask coconutbattery
brew install --cask ghostty
brew install --cask fbreader
brew install --cask spotify
brew install --cask telegram
brew install --cask textmate
brew install --cask vlc

shopt -s dotglob;
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp -R $DIR/.oh-my-zsh/* $HOME/.oh-my-zsh/
cp -R $DIR/.vim/* $HOME/.vim/
cp  $DIR/.gitconfig $HOME

#Fonts
brew install --cask font-jetbrains-mono


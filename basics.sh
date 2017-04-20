#!/bin/bash
set -x #echo on

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh

# Install rvm
brew install gnupg gnupg2
curl -sSL https://get.rvm.io | bash -s stable --ruby

#!/bin/bash
set -x #echo on

# Install apps I need
brew install zsh
brew install --cask coconutbattery
brew install --cask ghostty
brew install --cask fbreader
brew install --cask spotify
brew install --cask telegram
brew install --cask textmate
brew install --cask vlc

#Fonts
brew install --cask font-jetbrains-mono

#Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
omz theme set agnoster
omz plugin load z
omz plugin load ssh-agent
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
omz plugin load you-should-use
omz pulgin load git

brew install zsh-syntax-highlighting
echo "source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
brew install zsh-autosuggestions
echo "source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> "$HOME/.zshrc"

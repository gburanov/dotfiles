#!/bin/bash
set -x #echo on

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $DIR/gburanov.zsh-theme $HOME/.oh-my-zsh/themes/

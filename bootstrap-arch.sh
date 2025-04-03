#!/bin/bash

#TODO:

if ! [ -x "$(command -v brew)" ]; then
echo "brew command not found.. installing homebrew"
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
fi

echo "installing ansible"
brew list ansible || brew install ansible

echo "installing stow"
brew list stow || brew install stow



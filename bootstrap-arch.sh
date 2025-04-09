#!/bin/bash

sudo pacman -S --needed base-devel

if ! [ -x "$(command -v git)" ]; then
    echo "installing git"
    sudo pacman -S git
fi

if ! [ -x "$(command -v ansible)" ]; then
    echo "installing ansible"
    sudo pacman -S ansible
fi

if ! [ -x "$(command -v stow)" ]; then
    echo "installing stow"
    sudo pacman -S stow
fi


cd ~/ansible-dev-env/

ansible-playbook main.yml -K

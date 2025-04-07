#!/bin/bash


if ! [ -x "$(command -v ansible)" ]; then
    echo "installing ansible"
    sudo pacman -S ansible
fi

if ! [ -x "$(command -v stow)" ]; then
    echo "installing stow"
    sudo pacman -S stow
fi

ansible-playbook main.yml

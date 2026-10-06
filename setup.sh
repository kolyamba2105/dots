#!/bin/sh

if [ $# -eq 0 ]; then
    echo "Error: No argument provided"
    exit 1
elif [ "$1" != "a" ] && [ "$1" != "b" ]; then
    echo "Error: Argument must be 'a' or 'b'"
    exit 1
fi

rm ~/.zshrc
ln -s $PWD/.zshrc ~/.zshrc

if [ "$1" = "a" ]; then
    rm ~/.zshenv
    ln -s $PWD/.zshenv ~/.zshenv
fi

rm ~/.aerospace.toml
ln -s $PWD/.aerospace.toml ~/.aerospace.toml

rm ~/.gitconfig
ln -s $PWD/.gitconfig ~/.gitconfig

rm ~/.hushlogin
ln -s $PWD/.hushlogin ~/.hushlogin

rm ~/.ripgreprc
ln -s $PWD/.ripgreprc ~/.ripgreprc

rm ~/.stylua.toml
ln -s $PWD/.stylua.toml ~/.stylua.toml

rm ~/.wezterm.lua
ln -s $PWD/.wezterm.lua ~/.wezterm.lua

mkdir -p ~/.config

rm -rf ~/.config/ghostty
ln -s $PWD/.config/ghostty ~/.config/ghostty

rm -rf ~/.config/nvim
ln -s $PWD/.config/nvim ~/.config/nvim

rm ~/.config/starship.toml
ln -s $PWD/.config/starship.toml ~/.config/starship.toml

mkdir -p ~/.hammerspoon

rm -rf ~/.hammerspoon
ln -s $PWD/.hammerspoon ~/.hammerspoon

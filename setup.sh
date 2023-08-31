#!/bin/sh

if [ $# -eq 0 ]; then
  echo "Error: No argument provided"
  exit 1
elif [ "$1" != "a" ] && [ "$1" != "b" ]; then
  echo "Error: Argument must be 'a' or 'b'"
  exit 1
fi

dir="zsh/$1"

rm ~/.p10k.zsh
ln -s $PWD/$dir/.p10k.zsh ~/.p10k.zsh

rm ~/.zprofile
ln -s $PWD/$dir/.zprofile ~/.zprofile

rm ~/.zshrc
ln -s $PWD/$dir/.zshrc ~/.zshrc

rm ~/.amethyst.yml
ln -s $PWD/.amethyst.yml ~/.amethyst.yml

rm ~/.gitconfig
ln -s $PWD/.gitconfig ~/.gitconfig

rm ~/.hushlogin
ln -s $PWD/.hushlogin ~/.hushlogin

rm ~/.stylua.toml
ln -s $PWD/.stylua.toml ~/.stylua.toml

rm ~/.tmux.conf
ln -s $PWD/.tmux.conf ~/.tmux.conf

rm ~/.wezterm.lua
ln -s $PWD/.wezterm.lua ~/.wezterm.lua

mkdir -p ~/.config

rm -rf ~/.config/alacritty
ln -s $PWD/.config/alacritty ~/.config/alacritty

rm -rf ~/.config/nvim
ln -s $PWD/.config/nvim ~/.config/nvim

rm -rf ~/.config/htop
ln -s $PWD/.config/htop ~/.config/htop

rm -rf ~/.config/gitui
ln -s $PWD/.config/gitui ~/.config/gitui

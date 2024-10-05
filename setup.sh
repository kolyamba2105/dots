#!/bin/sh

rm ~/.zshrc
ln -s $PWD/.zshrc ~/.zshrc

rm ~/.aerospace.toml
ln -s $PWD/.aerospace.toml ~/.aerospace.toml

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

rm -rf ~/.config/btop
ln -s $PWD/.config/btop ~/.config/btop

rm -rf ~/.config/nvim
ln -s $PWD/.config/nvim ~/.config/nvim

rm -rf ~/.config/htop
ln -s $PWD/.config/htop ~/.config/htop

rm -rf ~/.config/gitui
ln -s $PWD/.config/gitui ~/.config/gitui

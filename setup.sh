#!/bin/sh

rm ~/.zshrc
ln -s $PWD/.zshrc ~/.zshrc

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

rm ~/.tmux.conf
ln -s $PWD/.tmux.conf ~/.tmux.conf

rm ~/.wezterm.lua
ln -s $PWD/.wezterm.lua ~/.wezterm.lua

mkdir -p ~/.config

rm -rf ~/.config/ghostty
ln -s $PWD/.config/ghostty ~/.config/ghostty

rm -rf ~/.config/nvim
ln -s $PWD/.config/nvim ~/.config/nvim

rm ~/.config/starship.toml
ln -s $PWD/.config/starship.toml ~/.config/starship.toml

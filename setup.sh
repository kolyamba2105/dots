#!/bin/sh

mkdir -p ~/.config

rm ~/.zshrc
ln -s $PWD/.zshrc ~/.zshrc

rm ~/.zprofile
ln -s $PWD/.zprofile ~/.zprofile

rm ~/.tmux.conf
ln -s $PWD/.tmux.conf ~/.tmux.conf

rm ~/.gitconfig
ln -s $PWD/.gitconfig ~/.gitconfig

rm ~/Brewfile
ln -s $PWD/Brewfile ~/Brewfile

rm ~/Brewfile.lock.json
ln -s $PWD/Brewfile.lock.json ~/Brewfile.lock.json

rm -rf ~/.config/alacritty
ln -s $PWD/.config/alacritty ~/.config/alacritty

rm -rf ~/.config/nvim
ln -s $PWD/.config/nvim ~/.config/nvim

rm -rf ~/.config/htop
ln -s $PWD/.config/htop ~/.config/htop

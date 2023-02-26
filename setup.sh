#!/bin/sh

mkdir -p ~/.config

rm ~/.zshrc
ln -s $PWD/.zshrc ~/.zshrc

rm ~/.zprofile
ln -s $PWD/.zprofile ~/.zprofile

rm ~/.tmux.conf
ln -s $PWD/.tmux.conf ~/.tmux.conf

rm ~/.p10k.zsh
ln -s $PWD/.p10k.zsh ~/.p10k.zsh

rm ~/.gitconfig
ln -s $PWD/.gitconfig ~/.gitconfig

rm ~/.fzf.zsh
ln -s $PWD/.fzf.zsh ~/.fzf.zsh

rm -rf ~/.config/alacritty
ln -s $PWD/.config/alacritty ~/.config/alacritty

rm -rf ~/.config/nvim
ln -s $PWD/.config/nvim ~/.config/nvim

rm -rf ~/.config/htop
ln -s $PWD/.config/htop ~/.config/htop

rm ~/.hushlogin
ln -s $PWD/.hushlogin ~/.hushlogin

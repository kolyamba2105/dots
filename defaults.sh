#!/bin/bash

# Dock
defaults write com.apple.dock "autohide" -bool true
defaults write com.apple.dock "orientation" -string "bottom"
defaults write com.apple.dock "tilesize" -int 64

# WezTerm
defaults write com.github.wez.wezterm "ApplePressAndHoldEnabled" -bool false

# Restart affected applications
killall Dock
killall wezterm-gui

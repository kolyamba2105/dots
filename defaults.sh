#!/bin/bash

# Dock
defaults write com.apple.dock "autohide" -bool true
defaults write com.apple.dock "autohide-delay" -float "0.5"
defaults write com.apple.dock "autohide-time-modifier" -float "0.5"
defaults write com.apple.dock "orientation" -string "bottom"
defaults write com.apple.dock "static-only" -bool "true"
defaults write com.apple.dock "tilesize" -int 64

# Restart affected applications
killall Dock

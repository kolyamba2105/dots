#!/bin/sh

rm Brewfile
rm Brewfile.lock.json

brew update
brew upgrade

brew bundle dump
brew bundle install

git add Brewfile Brewfile.lock.json
git commit -m "Update Brewfile"

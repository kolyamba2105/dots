#!/bin/sh

if [ $# -eq 0 ]; then
  echo "Error: No argument provided"
  exit 1
elif [ "$1" != "a" ] && [ "$1" != "b" ]; then
  echo "Error: Argument must be 'a' or 'b'"
  exit 1
fi

dir="brew/$1"

brew update
brew upgrade

brew cleanup --prune=all

rm $dir/Brewfile.lock.json

brew bundle dump --force --file=$dir/Brewfile

awk '!/tap \"homebrew\/cask\"/' $dir/Brewfile > tmp && mv tmp $dir/Brewfile
awk '!/tap \"homebrew\/core\"/' $dir/Brewfile > tmp && mv tmp $dir/Brewfile

brew bundle install --file=$dir/Brewfile

git add $dir/Brewfile $dir/Brewfile.lock.json
git commit -m "Update Brewfile [$1]"

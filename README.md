# MacOS setup

## Install MacOS development tools

```sh
xcode-select --install
```

## Setup SSH

- Generate `ssh` key

```sh
ssh-keygen
```

- Add content of `~/.ssh/id_rsa.pub` on Github

## Install oh-my-zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install HomeBrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

[Manage brew dependencies](https://tomlankhorst.nl/brew-bundle-restore-backup)

[Brewfile tips](https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f)

## Install dependencies

```sh
brew bundle install --file ./brew/{a-or-b}/Brewfile
```

## Install nvm

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
```

## Setup Neovim

[Setup guide](https://github.com/kolyamba2105/neovim-config/blob/master/README.md)

## tmux

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Setup config files

```sh
cd ~
git clone --recurse-submodules https://github.com/kolyamba2105/dots.git

cd ~/dots

git submodule init
git submodule update

sh setup.sh <a-or-b>
```

## Configure alt-tab

Configuration screenshots can be found [here](./.config/alt-tab)

## Useful MacOS commands

- Reset Dock default settings

```sh
defaults delete com.apple.dock && killall Dock
```

- Change Dock size

```sh
defaults write com.apple.dock tilesize -int 72 && killall Dock
```

- Lock Dock size

```sh
defaults write com.apple.dock size-immutable -bool yes && killall Dock
```

- Organize LaunchPad apps

```sh
defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock
```

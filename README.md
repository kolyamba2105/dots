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

## Setup config files

```sh
cd ~
git clone --recurse-submodules https://github.com/kolyamba2105/dots.git

cd ~/dots

git submodule init
git submodule update

sh setup.sh <a-or-b>
```

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
brew bundle install --file ./brew/Brewfile-{a-or-b}
```

## Setup Neovim

[Setup guide](https://github.com/kolyamba2105/nvim/blob/master/README.md)

### Build from source

Install build prerequisites:

```sh
brew install ninja cmake gettext curl git
```

Clone the repository and build a specific version:

```sh
git clone https://github.com/neovim/neovim.git ~/github/neovim

cd ~/github/neovim

git checkout v0.11.7

make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=$HOME/local/nvim
make install
```

### Update

```sh
cd ~/github/neovim

git fetch --tags
git checkout v0.X.Y

git pull --rebase

make distclean
make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=$HOME/local/nvim
make install
```

## Setup QMK (OLKB Preonic rev3)

Keymaps live in `./qmk` as a [QMK External Userspace](https://docs.qmk.fm/newbs_external_userspace), so `~/qmk_firmware` stays an unmodified clone. `qmk`, `python@3.13` and `dos2unix` are installed from `Brewfile-a`. The compilers are keg-only, so `.zshrc` adds them to `PATH`.

Clone `qmk_firmware` and check that all dependencies are found:

```sh
qmk setup
```

Point QMK to the userspace and set defaults:

```sh
qmk config user.overlay_dir=$HOME/dots/qmk
qmk config user.keyboard=preonic/rev3_drop
qmk config user.keymap=nolights
```

### Build and flash

```sh
qmk flash
```

When it waits for the bootloader, hold `Lower` + `Raise` and press `Q`.

### Update

```sh
cd ~/qmk_firmware

git pull
qmk git-submodule
```

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

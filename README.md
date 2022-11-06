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

## Setup ZSH

- [Install ohmyzsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
- [Install zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [Install zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

## Install HomeBrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

[Manage brew dependencies](https://tomlankhorst.nl/brew-bundle-restore-backup)

[Brewfile tips](https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f)

## Setup Neovim

[Setup guide](https://github.com/kolyamba2105/neovim-config/blob/master/README.md)

## tmux

```sh
# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Setup config files

```sh
cd ~
git clone https://github.com/kolyamba2105/mac-os-configs.git configs

cd ~/configs

git submodule init
git submodule update

sh setup.sh
```

# MacOS setup

## Setup SSH

- Generate `ssh` key

```sh
ssh-keygen
```

- Add content of `~/.ssh/id_rsa.pub` on Github

## Setup ZSH

[Install ohmyzsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)

## Install JetBrains Mono font

[Download link](https://www.jetbrains.com/lp/mono)

## Install MacOS development tools

```sh
xcode-select --install
```

## Install HomeBrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

FOLLOW POST-INSTALLATION INSTRUCTIONS WRITTEN IN CONSOLE OUTPUT AFTER HOMEBREW IS SUCCESSFULLY INSTALLED!!!

## Install necessary packages

[Manage brew dependencies](https://tomlankhorst.nl/brew-bundle-restore-backup)
[Brewfile tips](https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f)

### Dump all HomeBrew packages

```sh
# From this directory
brew bundle dump
```

### Restore HomeBrew packages

```sh
# From this directory
brew bundle
```

## Setup Neovim

[Setup guide](https://github.com/kolyamba2105/neovim-config/blob/master/README.md)

Neovim config is a separate git repository and is being used as a git
submodule. More about git submodules can be found [here](https://git-scm.com/book/en/v2/Git-Tools-Submodules).

## TPM

```sh
# Install TMUX plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Setup config files

```sh
# From home directory
git clone https://github.com/kolyamba2105/mac-os-configs.git configs

cd ~/configs

git submodule init
git submodule update

sh setup.sh
```

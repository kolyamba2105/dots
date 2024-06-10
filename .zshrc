eval "$(/opt/homebrew/bin/brew shellenv)"

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' frequency 7
zstyle ':omz:update' mode auto

plugins=(git nvm sudo vi-mode)

zstyle ':omz:plugins:nvm' lazy yes

source $ZSH/oh-my-zsh.sh

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history
HISTDUP=erase
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=$HISTSIZE

setopt appendhistory
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_save_no_dups
setopt sharehistory

export EDITOR=nvim
export VISUAL=nvim

# fzf
source <(fzf --zsh)

export FZF_DEFAULT_COMMAND="rg --files --hidden"
export FZF_DEFAULT_OPTS="-m --height 100% --layout=reverse --border --inline-info"

alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

alias ll="lsd -la"
alias ls="lsd"

alias cat="bat"
alias gui="gitui --theme ~/.config/gitui/catppuccin/themes/catppuccin-mocha.ron"

# oh-my-posh
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/ys.omp.json)"

export ZSH=$HOME/.zsh

bindkey -v
bindkey '^r' history-incremental-search-backward

export HISTFILE=$ZSH/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

export GDK_BACKEND=wayland
export CLUTTER_BACKEND=wayland

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

source $ZSH/spaceship/spaceship.zsh
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

export fpath=($ZSH/plugins/zsh-completions/src $fpath)

eval $(keychain --eval --quiet --noask id_ed25519)

# Exports
export EDITOR=nvim

# Aliases
alias vim=nvim
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias la="ls -lisha"

#!/bin/sh
# HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

export EDITOR="lvim"
export TERMINAL="wezterm"
export BROWSER="chrome"
export PATH="$HOME/.local/bin":$PATH
export MANPAGER='lvim +Man!'
export MANWIDTH=999
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/share/go/bin:$PATH
export GOPATH=$HOME/.local/share/go
export PATH=$HOME/.local/share/neovim/bin:$PATH
export PATH=$HOME/.local/share/bob/nvim-bin:$PATH
export CC=/opt/homebrew/opt/llvm/bin

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

eval "$(zoxide init zsh)"

eval "$(starship init zsh)"


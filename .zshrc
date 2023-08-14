# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

plug $HOME/.config/zsh/aliases.zsh
plug $HOME/.config/zsh/exports.zsh
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Load and initialise completion system
autoload -Uz compinit
compinit

# opam configuration
[[ ! -r /Users/gm/.opam/opam-init/init.zsh ]] || source /Users/gm/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

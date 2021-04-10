# Setup fzf
# ---------
if [[ ! "$PATH" == */home/cbirster/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/cbirster/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/cbirster/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/cbirster/.fzf/shell/key-bindings.bash"

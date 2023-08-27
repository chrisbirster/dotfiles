#!/bin/sh
alias g='lazygit'
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

alias kill8080="kill -9 $(lsof -t -i:'8080')"
alias kill3000="kill -9 $(lsof -t -i:'3000')"

alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1"

# Utils
# Replace ls with exa
alias ls="exa --long --header --git --git-ignore"
alias l="exa --long --header --git --tree --git-ignore --icons"

# Pomodoro
alias work="timer 25m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -sound Crystal"
        
alias rest="timer 5m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -sound Crystal"

# MPLS Weather
alias weather="curl -4 http://wttr.in/Minneapolis"

# Print File Tree 
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Search with fzf and open in lvim
alias ff="fd --type f --hidden --exclude .git | fzf --preview 'bat --color=always {1}' | xargs lvim"

# Copy line of code to clipboard
alias copy="ag . | fzf --delimiter ':' --preview 'bat --color=always --highlight-line {2} {1}' | awk -F ':' '{ print $3}' | sed 's/^\s+//' | pbcopy"

# Use bat instead of cat
alias cat="bat"

# First and only argument is the desired term title
function rename_tab {
  echo "\x1b]1337;SetUserVar=panetitle=$(echo -n $1 | base64)\x07"
}

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}


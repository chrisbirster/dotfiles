# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# User specific aliases and functions
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source "$HOME/.cargo/env"
eval "$(direnv hook bash)"
export PATH=$PATH:/usr/local/go/bin:$HOME/dev/go/bin:$(go env GOPATH)/bin



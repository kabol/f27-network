# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export EDITOR=nvim

set -o vi

alias lt='ls -ltr'
alias ll='ls -l'
alias vim=nvim

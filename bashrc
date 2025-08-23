#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# options
bind 'set completion-ignore-case on'
# set -o vi
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

EDITOR='nvim'
FILE_MANAGER='nautilus'
# Alias
alias brc='$EDITOR ~/.bashrc'
alias sbrc='source ~/.bashrc'
alias exp='$FILE_MANAGER .'
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias vim='nvim'
alias bgview='kitty +kitten icat "$(gsettings get org.gnome.desktop.background picture-uri | sed -e "s/^'\''file:\/\///" -e "s/'\''$//")"'
alias lh='ls -d .*'

export CARGO_HOME=~/.local/rust/
export RUSTUP_HOME=~/.local/rust/
export HISTFILE=~/.config/bash_history

. "/home/abbie/.local/rust//env"

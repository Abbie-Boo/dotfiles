# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# options
bind 'set completion-ignore-case on'
# set -o vi
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

# Variables
CONFIG='~/.config'
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

# Deno
. "/home/abbie/.local/rust//env"

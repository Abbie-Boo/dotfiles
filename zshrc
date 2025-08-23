ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
mkdir -p "$(dirname $ZINIT_HOME)"
git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"


# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

# Key bindings
bindkey '^y' autosuggest-accept
bindkey '^d' history-search-backward
bindkey '^u' history-search-forward

# History options
HISTSIZE=5000
HISTFILE=~/.local/share/zsh/zsh_hist
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Aliases
alias ls='ls --color'
alias grep='grep --color=auto'
alias lh='ls -d .*'

# Exports
export ZDOTDIR="~/.local/share/zsh/"
export CARGO_HOME=~/.local/rust/
export RUSTUP_HOME=~/.local/rust/

. "/home/abbie/.local/rust//env"

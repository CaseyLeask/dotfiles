# Set custom prompt
setopt PROMPT_SUBST
autoload -U promptinit
promptinit
prompt cl

# Initialize completion
autoload -U compinit
compinit -D

# Add paths
export GOPATH=$HOME/src
export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
export PATH="$HOME/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"
export PATH=$PATH:$GOPATH/bin

# Colorize terminal
alias ls='ls -G'
alias ll='ls -lG'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# Nicer history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# Use vim as the editor
export EDITOR=vi
# GNU Screen sets -o vi if EDITOR=vi, so we have to force it back.
set -o emacs

# Use C-x C-e to edit the current command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# By default, zsh considers many characters part of a word (e.g., _ and -).
# Narrow that down to allow easier skipping through words via M-f and M-b.
export WORDCHARS='*?[]~&;!$%^<>'

# Highlight search results in ack.
export ACK_COLOR_MATCH='red'

alias notes='(cd ~/Documents/logs && vim `date "+%Y%m%d"`.txt)'

# By default, ^S freezes terminal output and ^Q resumes it. Disable that so
# that those keys can be used for other things.
unsetopt flowcontrol

source /usr/local/share/chruby/chruby.sh
# source /usr/local/share/gem_home/gem_home.sh

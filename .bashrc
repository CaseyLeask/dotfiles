system_name=`uname -s`

. ~/.aliases/colours
. ~/.ps1_color

export PS1="\[${color_none}\]\h \[${color_gray}\]\w\[${git_piece}\]\[${color_ps1}\]\$\[${color_none}\] "
umask 022

export EDITOR='vim'
[ -f /opt/local/etc/bash_completion ] && . /opt/local/etc/bash_completion

bind "set show-all-if-ambiguous On"

# coloured ls
if [ "$TERM" != "dumb" ]; then
  color_option='-G'
else
  # TODO use path_helper to do this properly
  export PATH=/opt/local/bin:$PATH
fi
alias du='du -k -d1'
alias top='top -o cpu'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lal='ls -lha'
alias df='df -h'
alias less='less -R'

. ~/.aliases/git
. ~/.aliases/commands

eval "$(rbenv init -)"

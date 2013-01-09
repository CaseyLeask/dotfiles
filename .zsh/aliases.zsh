alias pstree="pstree -g 2"
alias hd="hexdump -C"

alias ls='ls -G'
alias l='ls'
alias ll='ls -lh'
alias la='ls -a'
alias lal='ls -lah'

alias sshagent='source ~/.zsh/ssh-agent-restore.zsh'

# See: https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
(( $+commands[reattach-to-user-namespace] )) &&
  alias vim="reattach-to-user-namespace vim"

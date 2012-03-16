# Append to history file, rather than replace it.
setopt append_history

# Do not enter command lines into the history list if they are duplicates of the previous event.
setopt hist_ignore_dups

# Do not store in history commands beginning with a space.
setopt hist_ignore_space

# New history lines are added to $HISTFILE as soon as they are entered.
setopt inc_append_history

# Report the status of background jobs immediately, rather than waiting until just before printing a prompt.
setopt notify

# Parameter expansion, command substitution and arithmetic expansion are performed in prompts.
setopt prompt_subst

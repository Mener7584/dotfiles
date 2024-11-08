# Env
# setopt GLOB_COMPLETE

# Alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias hx='helix'
alias mpvd="mpv --play-direction=forward --no-audio-display"

# Prompt
PS1='%F{yellow}[%n@%m]%f %F{blue}[%~]%f%F{green}>%f '

# Show description
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*' group-name ''

# Autocomplete
autoload -Uz compinit && compinit

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

# Completion on tab
zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} "ma=48;5;3;38;5;0"

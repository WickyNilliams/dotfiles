# enable auto-complete
autoload -Uz compinit && compinit
# enable case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# allow visually tabbing through completion options
zstyle ':completion:*' menu select

# allow up/down arrow keys to search through history
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# enable starship prompt
eval "$(starship init zsh)"

# aliases
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
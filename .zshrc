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

# enable fzf key bindings
source <(fzf --zsh)

# configure fnm
eval "$(fnm env --use-on-cd --shell zsh)"

# aliases
alias g="git"
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias greph="history | grep"

# anything we don't want commited to source control
if [ -f ~/.extras ]; then
  source ~/.extras
fi
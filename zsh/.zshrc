# ~/.zshrc

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=20000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

# Prompt
autoload -Uz promptinit
promptinit
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f%# '

# Completion
autoload -Uz compinit
compinit

# Key bindings
bindkey -e
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'

# PATH
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# Load local overrides if present
if [ -f "$HOME/.zshrc.local" ]; then
    source "$HOME/.zshrc.local"
fi

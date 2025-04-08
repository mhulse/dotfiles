#!/bin/zsh

echo "✅ aliases.zsh loaded"

# Reload the current shell (more thorough than just sourcing .zshrc)
alias reload='exec zsh'

# Show processes listening on ports (great for figuring out "what's using port 3000?")
alias wtf='lsof -i -P | grep LISTEN'

# Quickly open your zsh config in VS Code
alias zshrc='code ~/.zshrc'

# Fuzzy file picking
alias ff='fzf'

# Common git aliases
alias gaa='git aa'
alias gbr='git br'
alias gc='git c'
alias gcam='git cam'
alias gcm='git cm'
alias gcob='git cob'
alias gfps='git fps'
alias glol='git lol'
alias gpm='git pm'
alias gsl='git sl'
alias gss='git ss'
alias gup='git up'

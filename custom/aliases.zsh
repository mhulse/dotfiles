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
alias gcam='git cam'
alias gcob='git cob'
alias gfps='git fps'
alias glol='git lol'
alias gp='git p'
alias gsp='git save && git p'
alias gst='git st'
alias gsave='git save'
alias gsl='git sl'
alias gspm='git spm'
alias gss='git ss'
alias gwip='git wip'

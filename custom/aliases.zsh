#!/bin/zsh

# print load confirmation only during interactive user sessions
if [[ -o interactive ]]; then
  echo "✅ aliases.zsh loaded"
fi

# reload the current shell more thorough than just sourcing zshrc
alias reload='exec zsh'

# show processes listening on ports great for figuring out what is using port 3000
alias wtf='lsof -i -P | grep LISTEN'

# quickly open your zsh config in vs code
alias zshrc='code ~/.zshrc'

# fuzzy file picking
alias ff='fzf'

# common git aliases
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

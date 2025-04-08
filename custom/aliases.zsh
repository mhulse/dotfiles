#!/bin/zsh

echo "✅ aliases.zsh loaded"

# Reload the current shell (more thorough than just sourcing .zshrc)
alias reload='exec zsh'

# Show processes listening on ports (great for figuring out "what's using port 3000?")
alias wtf='lsof -i -P | grep LISTEN'

# Quickly open your zsh config in VS Code
alias zshrc='code ~/.zshrc'
# Source .zshrc on login shells ONLY if not interactive (prevents double-sourcing)
if [[ -o login && ! -o interactive ]]; then
  [[ -f ~/.zshrc ]] && source ~/.zshrc
fi
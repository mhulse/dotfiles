#!/bin/zsh

# source zshrc on login shells only if not interactive to prevent double sourcing
if [[ -o login && ! -o interactive ]]; then
  [[ -f ~/.zshrc ]] && source ~/.zshrc
fi

#!/bin/zsh

echo "✅ functions.zsh loaded"

# Freshen up your HomeBrew!
# frewshbrew [cask]
function freshbrew () {
  brew doctor
  brew update
  brew upgrade
  if [[ "$1" = "cask" ]]; then
      brew upgrade --cask
  fi
  brew cleanup
  brew doctor
  # List installed dependencies as tree:
  echo "Installed:"
  brew deps --tree --installed
}

# Reload current session
# https://unix.stackexchange.com/a/326948/67282
# .
function _accept-line () {
  if [[ $BUFFER == "." ]]; then
    BUFFER="source ${ZDOTDIR:-$HOME}/.zshrc"
  fi
  zle .accept-line
}
zle -N accept-line _accept-line

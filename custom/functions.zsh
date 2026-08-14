#!/bin/zsh

# print load confirmation only during interactive user sessions
if [[ -o interactive ]]; then
  echo "✅ functions.zsh loaded"
fi

# freshen up your homebrew packages and optional casks
function freshbrew () {
  brew doctor
  brew update
  brew upgrade
  if [[ "$1" = "cask" ]]; then
      brew upgrade --cask
  fi
  brew cleanup
  brew doctor
  
  # list installed dependencies as a tree
  echo "Installed:"
  brew deps --tree --installed
}

# reload current session rapidly when typing a single dot
function _accept-line () {
  if [[ $BUFFER == "." ]]; then
    BUFFER="source ${ZDOTDIR:-$HOME}/.zshrc"
  fi
  zle .accept-line
}
zle -N accept-line _accept-line

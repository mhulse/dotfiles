#!/bin/zsh

# print load confirmation only during interactive user sessions
if [[ -o interactive ]]; then
  echo "✅ functions.zsh loaded"
fi

# freshen up your homebrew packages and optional casks cleanly
function freshbrew () {
  # inject runtime environment overrides to silence install hints and logs
  export HOMEBREW_NO_ENV_HINTS=1
  
  brew doctor
  brew update
  brew upgrade
  if [[ "$1" = "cask" ]]; then
      brew upgrade --cask
  fi
  brew cleanup
  brew doctor
  
  # list installed dependencies as a tree cleanly
  echo "Installed:"
  if (( $+commands[tree] )); then
    # redirect the tree warning output string to dev null
    brew deps --tree --installed 2>/dev/null
  else
    brew deps --installed
  fi
  
  # clean up the temporary environment override variable
  unset HOMEBREW_NO_ENV_HINTS
}

# reload current session rapidly when typing a single dot
function _accept-line () {
  if [[ $BUFFER == "." ]]; then
    BUFFER="source ${ZDOTDIR:-$HOME}/.zshrc"
  fi
  zle .accept-line
}
zle -N accept-line _accept-line

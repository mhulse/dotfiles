# Freshen up your HomeBrew!
# $ frewshbrew [cask]
function freshbrew() {
  brew doctor
  brew update
  brew upgrade
  if [[ "$1" = "cask" ]]; then
      brew cask upgrade
  fi
  brew cleanup
  brew doctor
}

# Reloads session:
# https://unix.stackexchange.com/a/326948/67282
function _accept-line() {
  if [[ $BUFFER == "." ]]; then
    BUFFER="source ~/.zshrc"
  fi
  zle .accept-line
}
zle -N accept-line _accept-line

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
}

# Create new feature feature branch from name
# b <feature branch name>
function b () {
  readonly name=${1:?"Missing name!"}
  git checkout -b "feature/$name"
}

# Reload current session
# https://unix.stackexchange.com/a/326948/67282
# .
function _accept-line () {
  if [[ $BUFFER == "." ]]; then
    BUFFER="source ~/.zshrc"
  fi
  zle .accept-line
}
zle -N accept-line _accept-line

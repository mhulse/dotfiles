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
function reload() {
  source "$ZSH/oh-my-zsh.sh"
}

export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/dotfiles/custom"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random"

DISABLE_UPDATE_PROMPT="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  colored-man-pages
  colorize
  dotenv
  git
  osx
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"

export JRE_HOME=$(/usr/libexec/java_home)
export JAVA_HOME=$(/usr/libexec/java_home)

# For Homebrew:
path=("/usr/local/sbin" $path)

# Custom executables:
path+=("$HOME/scripts")

# Custom scripts:
[ -f "$HOME/scripts.zsh" ] && source "$HOME/scripts.zsh"

# Prevent PATH from taking on duplicate entries:
typeset -U path

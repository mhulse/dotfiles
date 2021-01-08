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
  fzf
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

# Setting fd as the default source for fzf:
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# To apply the command to CTRL-T as well:
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

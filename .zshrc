echo "✅ .zshrc loaded"

# ---------------------------------------
# Homebrew
# ---------------------------------------
eval "$(/opt/homebrew/bin/brew shellenv)"
export MANPATH="/usr/local/man:$MANPATH"

# Add PostgreSQL 14 to PATH if installed
if [ -d "/opt/homebrew/opt/postgresql@14/bin" ]; then
  export PATH="/opt/homebrew/opt/postgresql@14/bin:$PATH"
fi

# ---------------------------------------
# Oh My Zsh
# ---------------------------------------
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/dotfiles/custom"
ZSH_THEME="clean"
DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Fix for compdump conflicts:
ZSH_COMPDUMP="${ZSH_CACHE_DIR}/.zcompdump-${(%):-%m}-${ZSH_VERSION}"

# Plugins ☝️ must be sourced first!
plugins=(
  dotenv
  git
  zsh-autosuggestions
  zsh-nvm
)
source $ZSH/oh-my-zsh.sh

# ---------------------------------------
# Paths & Custom Scripts
# ---------------------------------------
path+=("$HOME/scripts")
[ -f "$HOME/scripts.zsh" ] && source "$HOME/scripts.zsh"
typeset -U path  # Remove path duplicates

# ---------------------------------------
# Node (nvm)
# ---------------------------------------
export NVM_AUTO_USE=true

# ---------------------------------------
# Ruby (rbenv)
# ---------------------------------------
if command -v rbenv &>/dev/null; then
  eval "$(rbenv init - zsh)"
fi

# ---------------------------------------
# Java (SDKMAN)
# ---------------------------------------
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

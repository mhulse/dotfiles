#!/bin/zsh

echo "✅ .zshrc loaded"

# ---------------------------------------
# Homebrew
# ---------------------------------------

# Set Homebrew environment variables (for Apple Silicon installs)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Prepend custom manpath for manual pages
export MANPATH="/usr/local/man:$MANPATH"

# ---------------------------------------
# Oh My Zsh
# ---------------------------------------

# Set the base directory for Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Set the custom plugins/themes directory (you can store your overrides here)
export ZSH_CUSTOM="$HOME/dotfiles/custom"

# Use the “robbyrussell” theme for a no-overhead built-in prompt
ZSH_THEME="robbyrussell"

# Don’t show update prompt every few weeks
DISABLE_UPDATE_PROMPT="true"

# Show dots while waiting for command completions
COMPLETION_WAITING_DOTS="true"

# Disable Git status check for untracked files (makes prompt faster)
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Prevent compdump conflicts
ZSH_COMPDUMP="${ZSH_CACHE_DIR}/.zcompdump-${(%):-%m}-${ZSH_VERSION}"

# Plugins ☝️ must be sourced first!
plugins=(
  dotenv
  fzf
  git
  zsh-autosuggestions
  zsh-nvm
)
source "$ZSH/oh-my-zsh.sh"

# Use fd with fzf for fast and clean file listing
export FZF_DEFAULT_COMMAND='fd --type f'

# Use bat for rich previews inside fzf
export FZF_DEFAULT_OPTS="--preview 'bat --style=numbers --color=always {} | head -100'"

# ---------------------------------------
# Paths & Custom Scripts
# ---------------------------------------

# Add custom scripts directory to $PATH
path+=("$HOME/scripts")
# Source custom aliases/functions if the file exists
[ -f "$HOME/scripts.zsh" ] && source "$HOME/scripts.zsh"

# Remove path duplicates
typeset -U path

# ---------------------------------------
# Node (nvm + yarn)
# ---------------------------------------

# Automatically switch Node versions when entering a directory with an .nvmrc
export NVM_AUTO_USE=true

# Silence nvm’s startup message
export NVM_SILENT=true


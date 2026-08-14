#!/bin/zsh

# print load confirmation only during interactive user sessions
if [[ -o interactive ]]; then
  echo "✅ .zshrc loaded"
fi

# fix remote ssh compatibility without breaking local terminal features
if [[ -n $SSH_CONNECTION ]]; then
  export TERM=xterm-256color
fi

# ---------------------------------------
# homebrew
# ---------------------------------------

# load homebrew environment variables for apple silicon or intel installs
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)" 
elif [ -x /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)" 
fi

# prepend custom manpath for manual pages
export MANPATH="/usr/local/man:$MANPATH"

# ---------------------------------------
# oh my zsh
# ---------------------------------------

# set base directory for oh my zsh
export ZSH="$HOME/.oh-my-zsh"

# set custom plugins and themes directory
export ZSH_CUSTOM="$HOME/dotfiles/custom"

# use built in robbyrussell theme for no overhead
ZSH_THEME="robbyrussell"

# disable update prompts and optimize git performance
DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# prevent compdump conflicts
ZSH_COMPDUMP="${ZSH_CACHE_DIR}/.zcompdump-${(%):-%m}-${ZSH_VERSION}"

# configure lazy loading for nvm plugin before sourcing framework
zstyle ':omz:plugins:nvm' lazy yes
zstyle ':omz:plugins:nvm' autoload yes

# define and source shell plugins
plugins=(
  fzf
  git
  zsh-autosuggestions
  zsh-nvm
)
source "$ZSH/oh-my-zsh.sh"

# ---------------------------------------
# search settings fzf
# ---------------------------------------

# clean default settings for general fzf searches using fd
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'

# apply heavy bat preview strictly to file finder shortcut ctrl t
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always {} | head -100'"

# bind arrow keys to cycle only through past commands matching your typed prefix
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# bind standard arrow sequences
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

# bind application mode arrow sequences (covers iterm2 alternative modes)
bindkey '^[OA' up-line-or-beginning-search
bindkey '^[OB' down-line-or-beginning-search

# ---------------------------------------
# paths and custom scripts
# ---------------------------------------

# add custom scripts and executable directories to system path
path+=("$HOME/scripts")
path+=("$HOME/bin")

# source custom aliases or functions file if it exists
[ -f "$HOME/scripts.zsh" ] && source "$HOME/scripts.zsh"

# remove system path duplicates
typeset -U path

# ---------------------------------------
# node management nvm yarn
# ---------------------------------------

# automatically switch node versions using nvmrc file quietly
export NVM_AUTO_USE=true
export NVM_SILENT=true

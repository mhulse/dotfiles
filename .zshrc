if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/dotfiles/custom"

# Save the location of the current completion dump file:
# https://github.com/ohmyzsh/ohmyzsh/issues/7332#issuecomment-624221366
ZSH_COMPDUMP="${ZSH_CACHE_DIR}/.zcompdump-${(%):-%m}-${ZSH_VERSION}"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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
  zsh-nvm
  zsh-syntax-highlighting
)
# Plugins ☝️ MUST be sourced first!
source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"

export JRE_HOME=$(/usr/libexec/java_home)
export JAVA_HOME=$(/usr/libexec/java_home)

# Place this after nvm initialization!
# TODO: Put this somewhere more organized.
# https://github.com/nvm-sh/nvm#zsh
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

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

# p10k:
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# jENV https://www.jenv.be/
if ! type "$jenv" > /dev/null; then
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"
fi

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

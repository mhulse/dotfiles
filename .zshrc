export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/dotfiles/custom"

# https://github.com/lukechilds/zsh-nvm#auto-use
export NVM_AUTO_USE=true

# Save the location of the current completion dump file:
# https://github.com/ohmyzsh/ohmyzsh/issues/7332#issuecomment-624221366
ZSH_COMPDUMP="${ZSH_CACHE_DIR}/.zcompdump-${(%):-%m}-${ZSH_VERSION}"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

DISABLE_UPDATE_PROMPT="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  dotenv
  git
  zsh-autosuggestions
  zsh-nvm
)
# Plugins ☝️ MUST be sourced first!
source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"

# For Homebrew:
path=("/usr/local/sbin" $path)

# Custom executables:
path+=("$HOME/scripts")

# Custom scripts:
[ -f "$HOME/scripts.zsh" ] && source "$HOME/scripts.zsh"

# Prevent PATH from taking on duplicate entries:
typeset -U path

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

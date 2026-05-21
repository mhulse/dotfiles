# Dotfiles zsh + oh-my-zsh

## Installation

### System

1. [Homebrew](https://brew.sh/)
1. [Git](https://git-scm.com/download/mac) `brew install git`
1. [Oh My Zsh](https://ohmyz.sh/) (required) `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
1. Clone repo in home directory, then run [`install.zsh`](install.zsh)

### Reload shell configuration

After running `install.zsh`, reload your shell so `$ZSH_CUSTOM` is set:

```bash
source ~/.zshrc
```

### Zsh

**Important:**

- Built-in Oh My Zsh themes (e.g. `robbyrussell`) require no installation
- Only custom themes should be installed to `dotfiles/custom/themes/`
- Plugins must be installed to `dotfiles/custom/plugins/`

### Theme

This setup uses the built-in Oh My Zsh theme:

```zsh
ZSH_THEME="robbyrussell"
```

### Plugins

This repo defines `$ZSH_CUSTOM="$HOME/dotfiles/custom"`. The `custom/plugins/` and `custom/themes/` directories already exist and are gitignored. Install plugins into `custom/plugins/`:

1. [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) `git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"`
1. [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete) `git clone https://github.com/marlonrichert/zsh-autocomplete "$ZSH_CUSTOM/plugins/zsh-autocomplete"`
1. [zsh-nvm](https://github.com/lukechilds/zsh-nvm) `git clone https://github.com/lukechilds/zsh-nvm "$ZSH_CUSTOM/plugins/zsh-nvm"`

### Customization

The configuration looks for an optional, machine-specific file in your home directory:
- `~/scripts.zsh` for local aliases, API keys, or private functions

### Dependencies

1. [fzf](https://github.com/junegunn/fzf) `brew install fzf`
1. [fd](https://github.com/sharkdp/fd) `brew install fd`
1. [bat](https://github.com/sharkdp/bat) `brew install bat`

### Git

Run:

```zsh
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

## Tips

1. **Always show hidden files:** `defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder`
2. **Disable screen capture drop shadow:** `defaults write com.apple.screencapture disable-shadow -bool true`
3. **Disable screen capture thumbnail preview:** `defaults write com.apple.screencapture show-thumbnail -bool false`
4. **Manage nvm via zsh plugin:** Run `nvm upgrade`, `nvm revert`, `nvm install --lts`, or `nvm uninstall <version>`
5. **Reload shell config rapidly:** Enter `.` instead of typing the full `source ~/.zshrc` command
6. **Store generated app CLI scripts:** Point third-party tool locations like JetBrains to `~/bin`
7. **Keep personal scripts separate:** Drop your custom hand-written tools into `~/scripts/`

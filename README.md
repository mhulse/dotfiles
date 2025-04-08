# Dotfiles

zsh + oh-my-zsh

## Installation

### System

1. [Homebrew](https://brew.sh/)

1. [Git](https://git-scm.com/download/mac) `brew install git`

1. Clone repo in home directory, then run: [`install.zsh`](install.zsh)

### Zsh

**Important:** Install plugins and themes to `dotfiles/custom/`!

1. [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

1. [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete)

1. [zsh-nvm](https://github.com/lukechilds/zsh-nvm)

Next, reload your profile by typeing `.` at the command prompt.

Run:

```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

## Tips

1. Always show hidden files: `defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder`

1. Disable Screen Capture’s …

    - Drop shadow: `defaults write com.apple.screencapture disable-shadow -bool true`
    - Thumbnail preview: `defaults write com.apple.screencapture show-thumbnail -bool false`

1. [zsh-nvm](https://github.com/lukechilds/zsh-nvm) is managed by zsh (don’t use Brew for nvm!). Once installed: `nvm upgrade`, `nvm revert`, `nvm install --lts` (latest “Long-Term Support” release), `nvm uninstall <version>`

# Dotfiles

zsh + oh-my-zsh

## Installation

### System

1. [Homebrew](https://brew.sh/)

1. [Git](https://git-scm.com/download/mac) `brew install git`

1. [nvm](https://github.com/nvm-sh/nvm), then run: `nvm install --lts`

1. Clone repo in home directory, then run: [`install.zsh`](install.zsh)

1. [SDKMAN!](https://sdkman.io/install), after the installation steps, run: `sdk install java 18.0.1.1-open && sdk install gradle`

### Zsh

**Important:** Install plugins and themes to `dotfiles/custom/`!

1. [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

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

1. Might as well upgrade to the latest bash version: `brew install bash && sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"`

1. In order to avoid putting personal info into version control, and to keep out cruft added by apps (I’m looking at you [Sourcetree](https://www.sourcetreeapp.com/)), the installation script creates a [`.gitignore`](.gitignore) and imports the one found in this repository.

1. Always show hidden files: `defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder`

1. Disable Screen Capture’s …

    - Drop shadow: `defaults write com.apple.screencapture disable-shadow -bool true`
    - Thumbnail preview: `defaults write com.apple.screencapture show-thumbnail -bool false`

1. [zsh-nvm](https://github.com/lukechilds/zsh-nvm) is managed by zsh (don’t use Brew for nvm!). Once installed: `nvm upgrade`, `nvm revert`, `nvm install --lts` (latest “Long-Term Support” release), `nvm uninstall <version>`

1. iTerm2 tweaks:

    - By default, word jumps (option + → or ←) and word deletions (option + backspace) do not work. To enable these, go to <kbd>iTerm</kbd> → <kbd>Preferences…</kbd> → <kbd>Profiles</kbd> → <kbd>Keys</kbd> → <kbd>Presets…</kbd> → <kbd>Natural Text Editing</kbd>
    - <kbd>iTerm2</kbd> → <kbd>Preferences…</kbd> → <kbd>Keys</kbd> → <kbd>Key Bindings</kbd> and create a new mapping <kbd>⌘</kbd> + <kbd>K</kbd> to “Send Hex Codes”: `0x0c` ([reference](https://superuser.com/a/1036168/201992))
    - Color preset: [ayu](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/ayu.itermcolors)
    - <kbd>iTerm2</kbd> → <kbd>Preferences…</kbd> → <kbd>Profiles</kbd> → <kbd>Text</kbd>, enable “Box” and “Blinking” for Cursor.
    - Enable “Unlimited scrollback” in your profile → <kbd>Terminal</kbd> → <kbd>Scrollback Buffer</kbd>

More info coming soon!

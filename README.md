# Dotfiles

zsh + oh-my-zsh

## Installation

Clone repo in home directory, then run [`install.zsh`](install.zsh).

## Notes

1. In order to avoid putting personal info into version control, and to keep out cruft added by apps (I’m looking at you [Sourcetree](https://www.sourcetreeapp.com/)), the installation script creates a [`.gitignore`](.gitignore) and imports the one found in this repository.

1. **Theme:** [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

1. **Font:** [Meslo Nerd Font patched for Powerlevel10k](https://github.com/romkatv/powerlevel10k/blob/master/README.md#fonts) (the config wizard did not prompt me, so I used the manual installation method)

1. [zsh-nvm](https://github.com/lukechilds/zsh-nvm) is managed by zsh (don’t use Brew for nvm!). Once installed: `nvm upgrade`, `nvm revert`, `nvm install --lts` (latest “Long-Term Support” release), `nvm uninstall <version>`

1. [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

1. iTerm2 tweaks:

    - By default, word jumps (option + → or ←) and word deletions (option + backspace) do not work. To enable these, go to <kbd>iTerm</kbd> → <kbd>Preferences…</kbd> → <kbd>Profiles</kbd> → <kbd>Keys</kbd> → <kbd>Presets…</kbd> → <kbd>Natural Text Editing</kbd>
    - <kbd>iTerm2</kbd> → <kbd>Preferences…</kbd> → <kbd>Keys</kbd> → <kbd>Key Bindings</kbd> and create a new mapping <kbd>⌘</kbd> + <kbd>K</kbd> to “Send Hex Codes”: `0x0c` ([reference](https://superuser.com/a/1036168/201992))
    - Color preset: [ayu](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/ayu.itermcolors)
    - <kbd>iTerm2</kbd> → <kbd>Preferences…</kbd> → <kbd>Profiles</kbd> → <kbd>Text</kbd>, enable “Box” and “Blinking” for Cursor.

More info coming soon!

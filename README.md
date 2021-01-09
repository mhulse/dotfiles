# Dotfiles

zsh + oh-my-zsh

*Inspired by [@nqthqn](https://github.com/nqthqn/)’s [dotfiles](https://github.com/nqthqn/dotfiles)!*

## Installation

Clone repo in home directory, then run [`install.zsh`](install.zsh).

## Notes

1. Using a Brew-installed latest version of zsh: `brew install zsh && sudo sh -c "echo /usr/local/bin/zsh >> /etc/shells" && chsh -s /usr/local/bin/zsh` (see [this](https://stackoverflow.com/a/44549662/922323))

1. In order to avoid putting personal info into version control, and to keep out cruft added by apps (I’m looking at you [Sourcetree](https://www.sourcetreeapp.com/)), the installation script creates a [`.gitignore`](.gitignore) and imports the one found in this repository.

1. **Theme:** [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

1. **Font:** [Meslo Nerd Font patched for Powerlevel10k](https://github.com/romkatv/powerlevel10k/blob/master/README.md#fonts) (the config wizard did not prompt me, so I used the manual installation method)

1. Brew install [fzf](https://github.com/junegunn/fzf)

1. [zsh-nvm](https://github.com/lukechilds/zsh-nvm) is managed by zsh (don’t use Brew for nvm!). Once installed: `nvm upgrade`, `nvm revert`, `nvm install node`, `nvm uninstall <version>`

1. [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

1. [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

More info coming soon!

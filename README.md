# 🔧 dotfiles zsh oh-my-zsh

## 📂 installation

### system

1. [Homebrew](https://brew.sh)
1. [Git](https://git-scm.com) `brew install git`
1. [Oh My Zsh](https://ohmyz.sh) (required) `sh -c "$(curl -fsSL https://githubusercontent.com)"`
1. Clone repo in home directory, then run [`install.zsh`](install.zsh)

### reload shell configuration

after running install.zsh reload your shell so zsh_custom is set

```bash
source ~/.zshrc
```

### zsh

important

- built-in oh my zsh themes require no installation
- only custom themes should be installed to dotfiles/custom/themes/
- plugins must be installed to dotfiles/custom/plugins/

### theme

this setup uses the built-in oh my zsh theme

```zsh
ZSH_THEME="robbyrussell"
```

### plugins

this repo defines zsh_custom in your home dotfiles folder. the custom/plugins/ and custom/themes/ directories already exist and are gitignored. install plugins into custom/plugins/

1. [zsh-autosuggestions](https://github.com) `git clone https://github.com "$ZSH_CUSTOM/plugins/zsh-autosuggestions"`

### customization

the configuration looks for an optional machine-specific file in your home directory
- `~/scripts.zsh` for local aliases, api keys, or private functions

### dependencies

```bash
brew install fzf fd bat tree zoxide fnm
```

### node and npm

Node.js is managed by [fnm](https://github.com/Schniz/fnm); npm is bundled with Node.
The shell initializes fnm when installed and automatically selects project versions
from `.node-version` or `.nvmrc`. No nvm plugin is required.

For a new machine, install an LTS version and make it the default:

```zsh
brew install fnm
source ~/.zshrc
fnm install --lts
fnm list
```

Choose the installed version shown above, then activate it as your default:

```zsh
fnm default <version>
fnm use default
node --version
npm --version
```

For an existing project, keep its required version. If it has a version file,
enter the project and run `fnm install` to install that version, then `fnm use`.
For example, Ambiguism currently pins `22.23.5` in `.node-version`, matching its CI.

To pin another project, choose a version compatible with its tooling, then run
these commands from that project's root:

```zsh
fnm install <version>
fnm use <version>
node --version > .node-version
```

Commit the project's version file alongside its source. Use one version file per
project; an existing `.nvmrc` also works with fnm. Other projects retain their own
pins, while projects without a pin use the configured default. Keep dependencies
local to each project rather than installing them globally.

When migrating from nvm, this configuration replaces its shell hooks with fnm.
Existing nvm installations are left untouched; reinstall any required versions
with fnm before removing old installations.

### git

run

```zsh
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

## 💡 tips

1. always show hidden files `defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder`
2. disable screen capture drop shadow `defaults write com.apple.screencapture disable-shadow -bool true`
3. disable screen capture thumbnail preview `defaults write com.apple.screencapture show-thumbnail -bool false`
4. manage Node with `fnm list`, `fnm install <version>`, `fnm use <version>` and `fnm default <version>`
5. jump to directories with zoxide instead of cd type z and a partial name like z canvas
6. search files with ctrl t and search directories with alt c to see dynamic sidebar previews
7. clear corrupt environments quickly run node-vacuum to drop node_modules and wipe dependency caches
8. reload shell config rapidly enter dot instead of typing the full source command
9. store generated app cli scripts point third-party tool locations like jetbrains to bin directory
10. keep personal scripts separate drop your custom hand-written tools into scripts directory

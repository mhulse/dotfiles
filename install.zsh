echo "🔧 Setting up your dotfiles..."

# ----------------------------------------
# Symlink .zshrc and .zprofile
# ----------------------------------------
files=(
  ".zshrc"
  ".zprofile"
)

for i in "${files[@]}"; do
  ln -sf "$(pwd)/$i" ~/"$i"
  echo "🔗 Symlinked $i → ~/$i"
done

# ----------------------------------------
# Create base ~/.gitconfig if it doesn't exist
# ----------------------------------------
if [ ! -f ~/.gitconfig ]; then
  cat <<EOF > ~/.gitconfig
[include]
  path = ~/dotfiles/.gitconfig
EOF
  echo "✅ Created base ~/.gitconfig and included ~/dotfiles/.gitconfig"
else
  echo "⚠️  ~/.gitconfig already exists — skipping creation"
fi

# ----------------------------------------
# Copy .gitignore_global if missing
# ----------------------------------------
if [ ! -f ~/.gitignore_global ]; then
  cp "$(pwd)/.gitignore_global" ~/.gitignore_global
  echo "✅ Copied default .gitignore_global from dotfiles"
else
  echo "⚠️  ~/.gitignore_global already exists"
  echo "   👉 You may want to manually compare with: $(pwd)/.gitignore_global"
fi

# ----------------------------------------
# Set Git global excludesfile if not already set
# ----------------------------------------
if ! git config --global core.excludesfile &>/dev/null; then
  git config --global core.excludesfile ~/.gitignore_global
  echo "✅ Set Git global core.excludesfile to ~/.gitignore_global"
else
  echo "ℹ️  Git global core.excludesfile is already set"
fi

echo "🎉 Dotfiles setup complete!"

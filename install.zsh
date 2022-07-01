# Symlink these files:
files=(
  ".zshrc"
)

for i in "${files[@]}"
  do ln -sf "$(pwd)"/"$i" ~/"$i"
done

# Create a parent Git config:
[ -f ~/.gitconfig ] || \
  echo "[include]\n  path = ~/dotfiles/.gitconfig\n" \
  > ~/.gitconfig

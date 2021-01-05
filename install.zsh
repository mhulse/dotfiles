files=(
  ".gitconfig"
  ".tmux.conf"
  ".zshrc"
)

for i in "${files[@]}"
  do ln -sf "$(pwd)"/"$i" ~/"$i"
done

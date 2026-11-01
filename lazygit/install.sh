#!/usr/bin/env bash
# Installs the Nebula lazygit colours beside your own config.yml
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/lazygit
mkdir -p "$dest"
[ -f "$dest/nebula.yml" ] && cp "$dest/nebula.yml" "$dest/nebula.yml.bak"
cp "$dir/nebula.yml" "$dest/"
echo "Done. zsh/nebula.zsh points LG_CONFIG_FILE at config.yml plus nebula.yml; without it:"
echo "  export LG_CONFIG_FILE=\"\$HOME/.config/lazygit/config.yml,\$HOME/.config/lazygit/nebula.yml\""

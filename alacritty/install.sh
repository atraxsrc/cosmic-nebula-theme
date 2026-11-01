#!/usr/bin/env bash
# Installs the Nebula Alacritty colour scheme into ~/.config/alacritty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/alacritty/themes
mkdir -p "$dest"
[ -f "$dest/nebula.toml" ] && cp "$dest/nebula.toml" "$dest/nebula.toml.bak"
cp "$dir/nebula.toml" "$dest/"
echo "Done. Add to ~/.config/alacritty/alacritty.toml:"
echo '  [general]'
echo '  import = ["~/.config/alacritty/themes/nebula.toml"]'

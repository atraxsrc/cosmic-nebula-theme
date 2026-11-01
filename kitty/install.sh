#!/usr/bin/env bash
# Installs the Nebula kitty colour scheme into ~/.config/kitty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/kitty/themes
mkdir -p "$dest"
[ -f "$dest/Nebula.conf" ] && cp "$dest/Nebula.conf" "$dest/Nebula.conf.bak"
cp "$dir/Nebula.conf" "$dest/"
echo "Done. Add to ~/.config/kitty/kitty.conf:  include themes/Nebula.conf"
echo "then reload kitty (Ctrl+Shift+F5)."

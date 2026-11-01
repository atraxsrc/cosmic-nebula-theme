#!/usr/bin/env bash
# Installs the Nebula Ghostty theme into ~/.config/ghostty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/ghostty/themes
mkdir -p "$dest"
[ -f "$dest/Nebula" ] && cp "$dest/Nebula" "$dest/Nebula.bak"
cp "$dir/Nebula" "$dest/"
echo "Done. Add to ~/.config/ghostty/config:  theme = Nebula"
echo "(or  theme = dark:Nebula,light:NebulaDay  to follow COSMIC's toggle), then reload: Ctrl+Shift+,"

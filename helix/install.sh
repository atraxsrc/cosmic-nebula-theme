#!/usr/bin/env bash
# Installs the Nebula Helix theme into ~/.config/helix/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/helix/themes
mkdir -p "$dest"
[ -f "$dest/nebula.toml" ] && cp "$dest/nebula.toml" "$dest/nebula.toml.bak"
cp "$dir/nebula.toml" "$dest/"
echo 'Done. Add to ~/.config/helix/config.toml:  theme = "nebula"'

#!/usr/bin/env bash
# Installs the Nebula WezTerm colour module into ~/.config/wezterm/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/wezterm
mkdir -p "$dest"
[ -f "$dest/nebula.lua" ] && cp "$dest/nebula.lua" "$dest/nebula.lua.bak"
cp "$dir/nebula.lua" "$dest/"
echo 'Done. Add to ~/.config/wezterm/wezterm.lua:  config.colors = require("nebula")'

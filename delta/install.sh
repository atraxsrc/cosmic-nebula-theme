#!/usr/bin/env bash
# Installs the Nebula delta config into ~/.config/delta/. It does not edit
# ~/.gitconfig: add the [include] it prints.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/delta
mkdir -p "$dest"
[ -f "$dest/nebula.gitconfig" ] && cp "$dest/nebula.gitconfig" "$dest/nebula.gitconfig.bak"
cp "$dir/nebula.gitconfig" "$dest/"
if [ -f ~/.gitconfig ] && grep -qF "delta/nebula.gitconfig" ~/.gitconfig; then
    echo "Done. ~/.gitconfig already includes it."
else
    echo "Done. Add to ~/.gitconfig:"
    echo "  [include]"
    echo "      path = ~/.config/delta/nebula.gitconfig"
fi
echo "Needs the bat Nebula theme for the code colours: ./bat/install.sh"

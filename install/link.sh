#!/usr/bin/env bash

set -euo pipefail

echo "Installing symlinks"

DOTFILES=$HOME/.dotfiles

linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename "$file" '.symlink' )"
    if [ -e "$target" ] || [ -L "$target" ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $file to $target"
        rm 
        ln -s "$file" "$target"
    fi
done

#!/usr/bin/env bash

set -euo pipefail

echo "Installing symlinks"

for i in .*.symlink; do
    filename=$(basename $i .symlink)
    source=$(pwd)/$filename
    target=~/$filename
    if [ -L $target ] || [ -e $target ]; then
      echo "$target already exists"
    else
      echo "Linking $source to $target"
      ln -s $source $target
    fi
done

#!/usr/bin/env bash

set -euo pipefail

echo "Installing symlinks"

for i in .*.symlink; do
    target=$(basename $i .symlink)
    ln -s $(pwd)/$target ~
done

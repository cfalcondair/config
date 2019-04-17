#!/usr/bin/env bash

set -euo pipefail

echo "Installing atom packages"

packages=(
  language-markdown
  language-scala
  language-terraform
  package-settings
)


for package in ${packages[@]}; do
  apm install $package
done

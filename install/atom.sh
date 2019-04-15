#!/usr/bin/env bash

set -euo pipefail

echo "Installing atom packages"

packages=(
  Hydrogen
  autocomplete-json
  autocomplete-modules
  autocomplete-python
  busy-signal
  docblock-python
  go-debug
  go-plus
  intentions
  language-scala
  language-terraform
  linter
  linter-scalac
  linter-terraform-syntax
  linter-ui-default
  package-settings
  scala-format
  teletype
)


for package in ${packages[@]}; do
  apm install $package
done

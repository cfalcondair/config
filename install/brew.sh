#!/usr/bin/env bash

if test ! "$( command -v brew )"; then
    echo "Installing homebrew"
    ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

echo -e "\\n\\nInstalling homebrew packages..."
echo "=============================="

formulas=(
    diff-so-fancy
    git
    go
    ripgrep
    the_silver_searcher
    tree
    wget
    vim
    z
    zsh
)

for formula in ${formulas[@]}; do
    if brew list $formula > /dev/null 2>&1; then
        echo "$formula already installed... skipping..."
    else
        brew install $formula
    fi
done

# Change the default shell to zsh
zsh_path="$( command -v zsh )"
if ! grep "$zsh_path" /etc/shells; then
    echo "adding $zsh_path to /etc/shells"
    echo "$zsh_path" | sudo tee -a /etc/shells
fi

if [[ "$SHELL" != "$zsh_path" ]]; then
    chsh -s "$zsh_path"
    echo "default shell changed to $zsh_path"
fi

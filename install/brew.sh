#!/usr/bin/env bash

set -euo pipefail

if test ! "$( command -v brew )"; then
    echo "Installing homebrew"
    ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

echo -e "\\n\\nInstalling homebrew packages..."
echo "=============================="

formulas=(
    awscli
    curl
    defaultbrowser
    diff-so-fancy
    entr
    git
    gnupg
    go
    mas
    neovim
    python3
    # Used so mac clipboard is accessable in tmux
    reattach-to-user-namespace
    ripgrep
    the_silver_searcher
    tmux
    tree
    wget
    z
    zsh
)

cask_formulas=(
    atom
    aws-vault
    dash
    firefox
    flux
    google-chrome
    intellij-idea-ce
    iterm2
    private-internet-access
    slack
    spotifree
    spotify
    telegram
    whatsapp
)


for formula in ${formulas[@]}; do
    if brew list $formula > /dev/null 2>&1; then
        echo "$formula already installed... skipping..."
    else
        brew install $formula
    fi
done

for formula in ${cask_formulas[@]}; do
    if brew cask list $formula > /dev/null 2>&1; then
        echo "$formula already installed... skipping..."
    else
        brew cask install $formula
    fi
done

# Install vundle as Vim package manager
mkdir ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Change permissions on iterm app
echo "Allowing the iterm app to be opened"
spctl --add /Applications/iTerm.app/

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

# Install ruby
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable
rvm install 2.6.2

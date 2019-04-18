# Add python3 binaries to path
export PATH=$PATH:/Users/samsonite/Library/Python/3.6/bin/

# Load go path
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Coloring
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export SCALA_VERSION="2.12.1-8-jre"

# Code versions
export CURRENT_RUBY_VERSION="2.4.1"
export CURRENT_PYTHON_VERSION="3.6.1"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"
#Standouts =(amuse tjkirch_mod sonicradish terminalparty miloshadzic fishy jbergantine kolo adben garyblessington robbyrussell peepcode)

export CODE_DIR=~/Documents/development/code/

export PATH=/usr/local/bin:$PATH

# Coloring
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export SCALA_VERSION="2.12.1-8-jre"

# Code versions
export CURRENT_RUBY_VERSION="2.4.1"
export CURRENT_PYTHON_VERSION="3.6.1"

# Miscellaneous Directories
alias documents="cd ~/Documents"
alias development="documents; cd development"
alias self="documents; cd self"
alias code="development; cd code"
alias infra="development; cd infra"

# Code Directories
alias cdpython="code; cd python"
alias cdruby="code; cd ruby"
alias cdrails="code; cd rails"
alias cdsh="code; cd sh"
alias cdsc="code; cd scala"

# Code Access
alias play_py="cdpython; cd play; docker run -it python:$CURRENT_PYTHON_VERSION"
alias play_r="cdruby; cd play; docker run -it ruby:$CURRENT_RUBY_VERSION"

# Alias Project Directories
alias cdsocialgood="cdgo; cd go-burst"
alias cdds="code; cd data_science/kaggle/russian_future_sales"
alias cdgoproject="cd $GOPATH; cd src/github.com/ipfs/"
alias cdwebsite="code; cd side_projects/portfolio_site"

# Aliases Other
alias fuck='sudo $(history -p \!\!)'
alias ss="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &"
alias b="vim ~/.dotfiles/.bashrc"
alias pt="ping google.com"

# Environment variables
export INFRA_PATH="~/Documents/development/infra"

# load other rc files
[[ -f ~/.dotfiles/.all_securerc ]] && source ~/.dotfiles/.all_securerc
[[ -f ~/.all_securerc ]] && source ~/.all_securerc



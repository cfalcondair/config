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

# Aliases Other
alias fuck='sudo $(history -p \!\!)'
alias ss="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &"
alias b="vim ~/.dotfiles/.bashrc"
alias pt="ping google.com"
alias ll="ls -l"
alias dcp="pwd | pbcopy"

# load other rc files
[[ -f ~/.dotfiles/.all_securerc ]] && source ~/.dotfiles/.all_securerc
[[ -f ~/.all_securerc ]] && source ~/.all_securerc

# Networking
alias dip="curl -s https://iplocation.com/ | grep -E '<b class=\"ip\">|<span class=\"region_name\">|<span class=\"country_name\">' | cut -d '>' -f 3 | cut -d '<' -f 1"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add python3 binaries to path
export PATH=$PATH:/Users/samsonite/Library/Python/3.6/bin/

# Load go path
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin
alias cdgo='cd $GOPATH/src/github.com/cfalcondair/'

# Start steam
alias w_steam='cd ~/Documents/wasting_time/games/windows & wine start SteamSetup.exe'

# Infra
alias tf="terraform"

# Alias Project Directories
alias cdsocialgood="cdgo; cd go-burst"
alias cdds="code; cd data_science/kaggle/russian_future_sales"
alias cdgoproject="cd $GOPATH; cd src/github.com/ipfs/"
alias cdwebsite="code; cd side_projects/portfolio_site"


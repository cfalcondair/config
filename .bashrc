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

# Infra Directories
alias cdvm="infra; cd vm-jessie"

# Networking
alias ssh_config="sudo vim ~/.ssh/config"

# Code Access
alias play_py="cdpython; cd play; docker run -it python:$CURRENT_PYTHON_VERSION"
alias play_r="cdruby; cd play; docker run -it ruby:$CURRENT_RUBY_VERSION"

# Alias Project Directories
alias pythonds="cdpython; cd data_science"
alias code_p="cdruby; cd coding_problems"
alias euler="code_p; cd euler"
alias bandit="code_p; cd war_games; cd bandit"

# Current project Directory
alias c="code; cd wikivoyage_search/query"

# VM
alias vm="cdvm; vagrant up; vagrant ssh"
alias vm_reboot="cdvm; vagrant destroy --force; vm"

# Alias Programs
alias s="sublime ."

# Aliases Other
alias fuck='sudo $(history -p \!\!)'
alias ss="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &"
alias b="vim ~/.configs/.bashrc"
alias pt="ping google.com"

# Environment variables
export INFRA_PATH="~/Documents/development/infra"

# load other rc files
source ~/.configs/.all_securerc


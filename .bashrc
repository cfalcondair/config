export PATH=/usr/local/bin:$PATH

# Coloring
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Aliases directories
alias documents="cd /Users/samsonite/Documents"
alias development="documents; cd development"
alias self="documents; cd self"
alias code="development; cd code"
alias infra="development; cd infra"

# Languages
alias cdpython="code; cd python"
alias cdruby="code; cd ruby"

# Language Access
alias play_py="cdpython; cd play; python"
alias play_r="cdruby; cd play; irb"

# Alias projects
alias pythonds="cdpython; cd data_science"
alias code_p="cdruby; cd coding_problems"
alias euler="code_p; cd euler"
alias hr="code_p; cd hacker_rank"

# Current project
alias c="code; cd wikivoyage_search/query"

# Load VM
alias vm="infra; cd vm-jessie; vagrant up; vagrant ssh"

# Alias Programs
alias s="sublime ."

# Aliases Other
alias fuck='sudo $(history -p \!\!)'
alias ss="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &"
alias b="vim ~/.configs/.bashrc"

# load other rc files
source ~/.configs/.all_securerc


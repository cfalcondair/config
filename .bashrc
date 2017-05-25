export PATH=/usr/local/bin:$PATH

# Coloring
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#aliases
alias documents="cd /Users/samsonite/Documents"
alias summary="documents;cd sport/sports_betting/strats/prosoccer;ruby summary.rb;"
alias s="sublime ."
alias development="documents; cd development"
alias code="development; cd code"
alias infra="development; cd infra"
alias pds="code; cd data_science/python"
alias ss="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &"
alias self="documents; cd self"

# data_science box bash_scripts
source ~/.dsrc

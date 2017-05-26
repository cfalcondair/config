export PATH=/usr/local/bin:$PATH

# Coloring
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# aliases directories
alias documents="cd /Users/samsonite/Documents"
alias development="documents; cd development"
alias code="development; cd code"
alias infra="development; cd infra"
alias pds="code; cd data_science/python"
alias ss="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &"
alias self="documents; cd self"

# aliases programs
alias s="sublime ."

# aliases other
alias fuck='sudo $(history -p \!\!)'
alias ss="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &"

# load other rc files
source ~/.configs/.all_securerc

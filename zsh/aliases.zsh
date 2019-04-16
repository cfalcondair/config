# Miscellaneous Directories
alias code="cd ~/Documents/development/code"
alias infra="cd ~/Documents/developmentinfra"

# Aliases Other
alias pbc="tr -d \"\n\" | pbcopy"
alias fuck='sudo $(history -p \!\!)'
alias b="vim ~/.dotfiles/.bashrc"
alias pt="ping google.com"
alias ll="ls -l"

# Networking
alias dip="curl -s https://iplocation.com/ | grep -E '<b class=\"ip\">|<span class=\"region_name\">|<span class=\"country_name\">' | cut -d '>' -f 3 | cut -d '<' -f 1"

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

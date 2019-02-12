source ~/.bash_profile

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"
#Standouts =(amuse tjkirch_mod sonicradish terminalparty miloshadzic fishy jbergantine kolo adben)

# Initialize Z
. `brew --prefix`/etc/profile.d/z.sh

plugins=(git ruby)

source $ZSH/oh-my-zsh.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Alert me whenever a command that is over 10 seconds is done.
# This way, I can go do something else and be alerted when its done.
# In seconds
export TIME_TO_ALERT=10
long_running_query()
{
  if [ $(fc -lLD 1 | tail -n 1 | cut -d" " -f3 | awk -F: '{ print ($1 * 60) + $2 }') -gt $TIME_TO_ALERT ]
  then
    say -v "Yuri" "hey, I'm done."
    echo "time taken was $(fc -lLD 1 | tail -n 1 | cut -d" " -f3 | awk -F: '{ print ($1 * 60) + $2 }') seconds."
  fi
}
precmd() { long_running_query }


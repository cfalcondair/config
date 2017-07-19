source ~/.bash_profile

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"
#Standouts =(amuse tjkirch_mod sonicradish terminalparty miloshadzic fishy)

# Initialize Z
. `brew --prefix`/etc/profile.d/z.sh

plugins=(git ruby)

source $ZSH/oh-my-zsh.sh

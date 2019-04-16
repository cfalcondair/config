# Any commands that are Linux specific
#
# lmad stands for Linux Manual A Day
# It will load the location of all manuals on the system and then pass a random
# manual on to the screen for inspection. Great way to slowly understand the linux
# system. Well, maybe its a great way.
alias lmad="man -w --regex .* | grep .gz | sed 's|.*/man/man./||' | sed 's/\.gz$//' | sed 's/\.[0-9]$//' | xargs shuf -n1 -e | xargs man"

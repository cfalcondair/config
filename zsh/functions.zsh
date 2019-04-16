####################
# functions
####################

function md() {
    mkdir -p $1
    cd $1
}

# Alert me whenever a command that is over 10 seconds is done.
# This way, I can go do something else and be alerted when its done.
# In seconds
export TIME_TO_ALERT=10
long_running_query()
{
  if [ $(fc -lLD 1 | tail -n 1 | cut -d" " -f5 | awk -F: '{ print ($1 * 60) + $2 }') -gt $TIME_TO_ALERT ]
  then
    say -v "Yuri" "hey, I'm done."
    echo "time taken was $(fc -lLD 1 | tail -n 1 | cut -d" " -f5 | awk -F: '{ print ($1 * 60) + $2 }') seconds."
  fi
}
precmd() { long_running_query }

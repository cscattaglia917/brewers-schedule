#! /bin/bash
source credentials.sh
day_of_month=$(date +%m-%d-%y)
day_of_week=$(date +%u)

if [ $day_of_week -lt 6 ] #Make sure it is a weekday
then
  game_info=$(awk -F ',' -v DOM="$day_of_month" '$1 == DOM {print $4}' schedule.csv)
  game_time=$(awk -F ',' -v DOM="$day_of_month" '$1 == DOM {print $2}' schedule.csv)
  if [ -z "$game_info" ]
  then
    exit
  else
    message="ALERT: $game_info @ $game_time"
    curl -s \
            --form-string "token=$PUSHOVER_APP_TOKEN" \
            --form-string "user=$PUSHOVER_USER_KEY" \
            --form-string "message=$message" \
            https://api.pushover.net/1/messages.json
  fi
fi


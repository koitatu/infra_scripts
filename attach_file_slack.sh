#!/bin/bash

# Set Env
MESSAGE="$@"
TOKEN="<MY_TOKEN>"
CHANNEL="#<MY_CHANNEL>"
DATE_TIME=$(date '+%Y%m%d %H:%M')
URL="https://slack.com/api/files.upload"

# Send to slack
curl -F content="${MESSAGE}" -F channels="${CHANNEL}" -F token=${TOKEN} -F title="${DATE_TIME}" -F filename="${DATE_TIME}" -F initial_comment=" <!here> result ${DATE_TIME}" 

#!/bin/bash

##
# User Configuration
##

# relative path
SCRIPT_PATH=notify-send-telegram.py

RECIPIENT_ID=
TG_TOKEN=


# --- do not change past this line ----------------------------------------------------------------------


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

LOG_USER="$PAM_USER"
LOG_DATE="$( date "+%Y-%m-%d %H:%M:%S" )"
OUT_WHO="$( who )"
LOG_IP="$PAM_RHOST"

if ! [ -z "$LOG_IP" ]
then
  FULL_GEO_LOC="$( geoiplookup ${LOG_IP} )"
  GEO_LOC="$( geoiplookup ${LOG_IP} | awk '{$1=$2=$3=$4=$5=""; print $6 $7 $8 $9 $10}' | sed -n 2p )"
else
  FULL_GEO_LOC="Unknown"
  GEO_LOC="Unknown"
fi

MESSAGE="
<b>Host:</b> $(cat /etc/hostname)
<b>User:</b> ${LOG_USER}
<b>IP:</b> ${LOG_IP}
<b>Service:</b> ${PAM_SERVICE}
<b>Date:</b> ${LOG_DATE}
<b>Uptime:</b> $(uptime -p)

<b>Geo/Host Info:</b>
${FULL_GEO_LOC}
"

TITLE="[LOGIN: $PAM_SERVICE] $(cat /etc/hostname) login from ${LOG_IP} [${GEO_LOC}]"
python3 $DIR/$SCRIPT_PATH -t $TG_TOKEN -r $RECIPIENT_ID --raw "$TITLE" "$MESSAGE"

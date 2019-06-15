#!/bin/bash

if [[ $(pgrep -c 'battery.sh') -gt 2 ]]
then
    exit 2
fi

while :;
do
    BATTINFO=`acpi -b`
    PRO=$(echo $BATTINFO | grep -q 'Discharging' && echo $BATTINFO | awk -F ', ' '{print substr($2, 1, length($2)-1)}' || echo "100")
    if [[ "$PRO" -le 5 ]] ; then
        systemctl suspend
    elif [[ "$PRO" -le 7 ]] ; then
        notify-send "Very low battery" "$BATTINFO"
        sleep 30;
    elif [[ "$PRO" -le 10 ]] ; then
        notify-send "Low battery" "$BATTINFO"
        sleep 2m;
    fi
    sleep 10;
done

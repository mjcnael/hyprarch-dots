#!/bin/bash
DISPLAY="eDP-1"
PLUGGED_RATE="144.014008"
UNPLUGGED_RATE="60.014999"

get_current_refresh_rate() {
    hyprctl monitors | grep -A 1 "Monitor $DISPLAY" | head -2 | tail -1 | awk -F'@' '{print $2}' | awk '{print $1}'
}

change_refresh_rate() {
    local rate=$1
    hyprctl keyword monitor "${DISPLAY},1920x1080@${rate},0x0,1"
    notify-send "Refresh Rate" "Changed to ${rate}Hz ($([ $(cat /sys/class/power_supply/AC0/online) -eq 1 ] && echo "Plugged in" || echo "On battery"))"
}

# Initial setup based on power state
LAST_STATE=$(cat /sys/class/power_supply/AC0/online)
if [[ $LAST_STATE -eq 1 ]]; then
    change_refresh_rate $PLUGGED_RATE
else
    change_refresh_rate $UNPLUGGED_RATE
fi

# Monitor for changes
while true; do
    CURRENT_STATE=$(cat /sys/class/power_supply/AC0/online)
    if [[ $CURRENT_STATE -ne $LAST_STATE ]]; then
        if [[ $CURRENT_STATE -eq 1 ]]; then
            change_refresh_rate $PLUGGED_RATE
        else
            change_refresh_rate $UNPLUGGED_RATE
        fi
        LAST_STATE=$CURRENT_STATE
    fi
    sleep 5
done

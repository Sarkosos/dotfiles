#!/bin/sh

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
  9[0-9]|100) ICON="󰁹" # nf-md-battery_high
  ;;
  [6-8][0-9]) ICON="󰂀" # nf-md-battery_medium
  ;;
  [3-5][0-9]) ICON="󰁾" # nf-md-battery_low
  ;;
  [1-2][0-9]) ICON="󰁻" # nf-md-battery_outline
  ;;
  *) ICON="󰂎" # nf-md-battery_alert
esac

if [[ "$CHARGING" != "" ]]; then
  ICON="󰂄" # nf-md-battery_charging
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}%"

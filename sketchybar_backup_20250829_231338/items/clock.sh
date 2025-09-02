#!/usr/bin/env sh

sketchybar \
    --add item clock right \
    --set clock \
    \
    update_freq=10 \
    label.font.size=14.0 \
    icon=󰃰 \
    icon.drawing=off \
    script="$PLUGIN_DIR/clock.sh"
#!/usr/bin/env sh

sketchybar \
    --add item date right \
    --set date \
    \
    update_freq=10 \
    label.font.size=9.0 \
    icon.drawing=off \
    script="$PLUGIN_DIR/date.sh"
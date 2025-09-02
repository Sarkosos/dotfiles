#!/usr/bin/env sh

sketchybar --add item     battery right               \
           --set battery icon=󰂎                      \
                          icon.color=$BLACK           \
                          icon.font="$FONT:Black:10.0" \
                          icon.padding_left=2         \
                          icon.padding_right=2        \
                          label.color=$BLACK          \
                          label.padding_left=2        \
                          label.padding_right=2       \
                          background.color=0xffe0e0b8 \
                          background.height=18        \
                          background.corner_radius=6  \
                          script="$PLUGIN_DIR/battery.sh" \
                          update_freq=60 
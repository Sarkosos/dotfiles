#!/usr/bin/env sh

sketchybar --add event aerospace_workspace_change
RED=0xffed8796
SPACE_ICONS=("" "" "" "" "")
for sid in $(aerospace list-workspaces --all); do
    sketchybar --add item "space.$sid" left \
        --subscribe "space.$sid" aerospace_workspace_change \
        --set "space.$sid" \
        icon="${SPACE_ICONS[($sid-1)]}"\
                              icon.padding_left=22                          \
                              icon.padding_right=22                         \
                              label.padding_right=33                        \
                              icon.highlight_color=$RED                     \
                              icon.font.size=14 \
                              label="·" \
                              label.drawing=off \
                              background.color=0x44ffffff \
                              background.corner_radius=5 \
                              background.height=30 \
                              background.drawing=off                         \
                              label.font="sketchybar-app-font:Regular:16.0" \
                              label.background.height=30                    \
                              label.background.drawing=on                   \
                              label.background.color=0xff494d64             \
                              label.background.corner_radius=9              \
        click_script="aerospace workspace $sid" \
        script="$CONFIG_DIR/plugins/aerospacer.sh $sid"
done


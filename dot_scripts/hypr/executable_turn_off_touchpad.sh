#! /usr/bin/env bash

HYPRLAND_DEVICE="dell0a71:00-06cb:ce81-touchpad"
HYPRLAND_VARIABLE="device[$HYPRLAND_DEVICE]:enabled"

if [ -z "$XDG_RUNTIME_DIR" ]; then
    export "XDG_RUNTIME_DIR=/run/user/$(id -u)"
fi

export STATUS_FILE="$XDG_RUNTIME_DIR/touchpad.status"

enable_touchpad() {
    printf "true" >"$STATUS_FILE"
    notify-send -u normal "Enabling Touchpad"
    hyprctl keyword "$HYPRLAND_VARIABLE" "true" -r
}

disable_touchpad() {
    printf "false" >"$STATUS_FILE"
    notify-send -u normal "Disabling Touchpad"
    hyprctl keyword "$HYPRLAND_VARIABLE" "false" -r
}

if ! [ -f "$STATUS_FILE" ]; then
    enable_touchpad
else
    if [ "$(cat "$STATUS_FILE")" = 'true' ]; then
        disable_touchpad
    elif [ "$(cat "$STATUS_FILE")" = 'false' ]; then
        enable_touchpad
    fi
fi

#!/bin/bash

if [[ $(<~/.keyboard-status) == "enabled" ]]; then
    xinput --disable 10 # place here you mouse id on xinput
    xinput --disable 9  # place here you keyboard id on xinput
    echo "disabled" > ~/.keyboard-status
else
    xinput --enable 10 # place here you mouse id on xinput
    xinput --enable 9  # place here you keyboard id on xinput
    echo "enabled" > ~/.keyboard-status
fi

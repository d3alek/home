#!/bin/bash

IN="eDP-1"
EXT="DP-2-3"

if (xrandr | grep "$EXT disconnected"); then
    xrandr --output $IN --auto --output $EXT --off 
else
    xrandr --output $IN --auto --primary --output $EXT --auto --right-of $IN
fi

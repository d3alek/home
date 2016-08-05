#!/bin/bash

IN="eDP-1"
EXT="VGA1"

if (xrandr | grep "$EXT disconnected"); then
    xrandr --output $IN --auto --output $EXT --off 
else
    xrandr --output $IN --auto --primary --output $EXT --auto --left-of $IN
fi

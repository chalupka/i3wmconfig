#!/usr/bin/env bash

icon=$HOME/.i3/lock-screen-icon.png
tmpbg=/tmp/screen.png

scrot $tmpbg
convert $tmpbg -scale 10% -scale 1000% $tmpbg
convert $tmpbg $icon -gravity Center -composite -matte $tmpbg
i3lock -u -i $tmpbg

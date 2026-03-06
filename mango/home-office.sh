#! /bin/bash

wlr-randr --output DP-4 --custom-mode 2560x1440@120Hz --transform 90 --pos 0,319
wlr-randr --output DP-7 --custom-mode 2560x1440@120Hz --pos 1440,1440
wlr-randr --output DP-8 --custom-mode 2560x1440@120Hz --transform 180 --pos 0,1440
wlr-randr --output eDP-1 --off

#!/bin/bash

while true; do
    BACKGROUND=$(for i in ~/.local/share/backgrounds/*.jpg; do echo $i; done | shuf --head-count=1)
    /usr/bin/feh --bg-fill $BACKGROUND
    sleep 10m
done

#!/bin/bash

my_laptop_external_monitor=$(xrandr --query | grep 'VGA1')
if [[ $my_laptop_external_monitor = *connected* ]]; then
    xrandr --output eDP1 --primary --mode 1920x1080 --rotate normal --output HDMI-1-1 --mode 1920x1080 --rotate normal --right-of eDP1
fi

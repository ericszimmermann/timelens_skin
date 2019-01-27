#!/bin/bash
skinpath="/home/zeric"
sourcepath=$PWD

cd "$skinpath"
if [ ! -f "$1.timeline.jpg" ]; then
    "./timelens" "$1"
fi
cp "$1.timeline.jpg" "timelens.jpg"
zip "myskin.vlt" "timelens.jpg"
vlc "$1"
cd "$sourcepath"
exit

#/bin/bash
pactl list | grep -oP 'Sink #\K([0-9]+)' | while read -r i ; do pactl -- set-sink-volume $i +3% ; done

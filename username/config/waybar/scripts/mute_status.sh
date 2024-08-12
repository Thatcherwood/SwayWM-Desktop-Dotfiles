#!/bin/bash
volume=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | cut -d ' ' -f 2)
if [ $volume == 0.00 ]; then
    echo "🎤Mute"
elif [ "$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | cut -d ' ' -f 3)" == "[MUTED]" ]; then
    echo "🎤Mute"
else
    grape=$(awk "BEGIN {print ($volume * 100)}")
echo "🎤 $grape%"
fi

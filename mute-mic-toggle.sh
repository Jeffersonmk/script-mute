#!/bin/bash

STATUS=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')

if [ "$STATUS" = "yes" ]; then
    pactl set-source-mute @DEFAULT_SOURCE@ 0
    notify-send "🎙️ Microfone ativado" "Agora está desmutado."
else
    pactl set-source-mute @DEFAULT_SOURCE@ 1
    notify-send "🔇 Microfone mutado" "Agora está sem som."
fi

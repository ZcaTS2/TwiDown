#!/bin/bash
#Checks if tmp.txt exists
if test -f "tmp.txt"; then
    # Takes Streamer Name
    read -p "Streamer: " pog

    # Shows recent VODS by streamer
    twitch-dl videos "$pog"

    # Takes user input of VOD
    read -p "Choose VOD: " vod

    # Downloads the VOD
    TMP=`cat tmp.txt` twitch-dl download -q source "$vod"
else
    read -p "Choose temporary folder: " temp
    echo "$temp" >> tmp.txt;

     # Takes Streamer Name
    read -p "Streamer: " pog

    # Shows recent VODS by streamer
    twitch-dl videos "$pog"

    # Takes user input of VOD
    read -p "Choose VOD: " vod

    # Downloads the VOD
    TMP=`cat tmp.txt` twitch-dl download -q source "$vod"
fi

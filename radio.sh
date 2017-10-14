#!/bin/bash

echo -e "Run radio"
echo -e "Take radio stations from https://www.xatworld.com/radio-search"
echo -e "1. Drum and Bass"
echo -e "2. Drum and Bass"
echo -e "3. Dubstep"

if [ "$1" = "1" ]
then
	mplayer http://212.129.52.188:8000/192.mp3
elif [ "$1" = "2" ]
then
	mplayer http://46.4.78.3:8156/relay
elif [ "$1" = "3" ]
then
	mplayer http://188.165.3.104:8000
else
	echo -e "\tPlease enter the number"
fi

#!/bin/bash

echo -e "Run radio"
echo -e "Take radio stations from https://www.xatworld.com/radio-search"
echo -e "Choose from 1 to 8"

if [ "$1" = "1" ]
then
	mplayer http://212.129.52.188:8000/192.mp3
#######################################################
elif [ "$1" = "2" ]
then
	mplayer http://46.4.78.3:8156/relay
#######################################################
elif [ "$1" = "3" ]
then
	mplayer http://144.217.55.202:7100/taraf
#######################################################
elif [ "$1" = "4" ]
then
	mplayer http://listen.radionomy.com/Radio-Nostalgia
#######################################################
elif [ "$1" = "5" ]
then
	mplayer http://listen.radionomy.com/1000Oldies
#######################################################
elif [ "$1" = "6" ]
then
	mplayer http://217.148.161.164:8192/stream
#######################################################
elif [ "$1" = "7" ]
then
	mplayer http://5.79.74.155:8000
#######################################################
elif [ "$1" = "8" ]
then
	mplayer http://188.165.3.104:8000
else
	echo -e "\tPlease enter the number"
fi

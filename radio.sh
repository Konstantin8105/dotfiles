#!/bin/bash

echo -e "Run radio"
echo -e "Take radio stations from https://www.xatworld.com/radio-search"
echo -e "1. Dubstep"

if [ "$1" = "1" ]; then
	mplayer http://212.129.52.188:8000/192.mp3
else
	echo -e "\tPlease enter the number"
fi

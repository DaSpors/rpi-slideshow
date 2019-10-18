#!/bin/bash 

USB="/media/pi/IMAGES"
DST="/home/pi/img"

while true; do 
	sleep 10
	if [ -d $USB ]
	then
		./slideshow.sh stop
		exec 3> >(zenity --display=:0.0 --progress --title="Neue Bilder gefunden" --pulsate --no-cancel --auto-close --width=400)

		echo "# Alte Bilder werden entfernt..." >&3
		rm -f $DST/*
		echo "# Neue Bilder werden kopiert..." >&3
		cp $USB/* $DST/
		echo "# Fertig, bitte jetzt den USB Stick entfernen..." >&3
		while if [ -d $USB ]; do
			sleep 10
		done;
		exec 3>&-
		./slideshow.sh start
	fi
done

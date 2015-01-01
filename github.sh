#!/bin/sh

if [ "`sudo head -1 /etc/resolv.conf | grep -o 8.8.8.8`" != "8.8.8.8" ];
then
	sed -i '1s/^/nameserver 8.8.8.8\n/' /etc/resolv.conf
	zenity --warning --text "Github Issue Solved !! Enjoy !!"
	notify-send "Your Welcome"

fi



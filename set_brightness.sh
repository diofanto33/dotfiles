#!/bin/bash

function set_brightness { 
	arg1=$1
	if [[ $arg1 = "up" ]]; then
		brightnessctl s +5%

	elif [[ $arg1 = "down" ]]; then
		brightnessctl s 5%-
	fi
	"/home/shine/.scripts/dwm/update_brightness.sh"
}

set_brightness $1

#! /usr/bin/bash

if [[ $# -eq 0 ]]; then
	echo "No argument is given."
	exit 0
fi

color=$1

printf "Your favorite color is:%s\n" $color

#! /usr/bin/bash

i=0

while (( $i<=10 ))
do
	((i++))

	if [ $i -eq 8 ]; then
		break;
	fi

	if [ $i -eq 6 ]; then
		continue;
	fi

	echo "The current value of i is $i"

done

	echo "Now the value of i is $i" 

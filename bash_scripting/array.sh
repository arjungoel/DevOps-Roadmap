#! /usr/bin/bash

: '
args=( "$@" ) 

# echo ${args[0]} ${args[1]} ${args[2]}

# neat way of printing maximum values

echo $a

echo $#        # to print length of the array

'

while read line
do 
	echo "$line"
done < "${1:-/dev/stdin}"

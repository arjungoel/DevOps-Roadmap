#! /usr/bin/bash

# while-loop


echo "Enter the number:"
read n

while [ $n -gt 0 ]
do
	sqr=$((n*n))
	echo "the square of $n is $sqr"
	((n--))
done


echo "                                     "

# for-loop

for (( i=0; i<5; i++ ))
do
	sqr=$((i*i))
	echo "The square of $n is $sqr"
done

echo "                                         "


# until-loop

until [ $n -le 0 ]
do
	sqr=$((n*n))
	echo "The square of $n is $sqr"
	((n--))
done

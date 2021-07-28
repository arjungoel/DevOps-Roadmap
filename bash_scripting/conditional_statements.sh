#! /usr/bin/bash

count=10
age=25
weight=70
#if [ $count -eq 100 ]
if (( $count > 10  ))	
then 
	echo "condition is true"
elif (( $count <= 10 ))
then
	echo "second condition is true"
else
	echo "condition is false"
fi


if [ $age -gt 18 ] && [ $age -lt 40 ]
then
	echo "Person is an Adult"
else
	echo "Person is a teenager"

fi

if [ $weight -gt 20 -a $weight -lt 50 ]
then
	echo "Person is malnourished"

else 
	echo "Person is doing fine"

fi


# Case Statement: multiple if-else statement(s)

echo -n "Enter the name of a country: "

read COUNTRY

echo -n "The official language of $COUNTRY is "

case $COUNTRY in

  Lithuania)
    echo -n "Lithuanian"
    ;;

  Romania | Moldova)
    echo -n "Romanian"
    ;;

  Italy | "San Marino" | Switzerland | "Vatican City")
    echo -n "Italian"
    ;;

  *)
    echo -n "unknown"
    ;;

esac

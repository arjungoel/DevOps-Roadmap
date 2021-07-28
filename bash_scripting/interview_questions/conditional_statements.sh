#! /usr/bin/bash

echo "Enter the number:"
read n 
if [ $n -gt 100 ]; then 
	echo "$n is greater than 100"
elif [ $n -gt 50 ]; then 
       echo "$n is greater than 50"
else
 	echo "$n is neither greater than 100 nor greater than 50"
fi


# case statement

echo "Enter the score:"
read score

case $score in 
	50)
		echo "You have scored a half century" ;;
	100) 
		echo "You have scored a century" ;;
	150)
		echo "You have achieved the target successfully" ;;
	*)
		echo "You got out on DUCK!!" ;; 
esac



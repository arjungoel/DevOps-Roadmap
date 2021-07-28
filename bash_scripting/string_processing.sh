#! /usr/bin/bash

echo "enter the first string:"
read string1

echo "enter the second string:"
read string2

if [ $string1 == $string2 ]
then 
	echo "true">success.txt
else
	echo "false">failure.txt
fi

# to compare the length of the strings

if [ $string1 \> $string2 ]
then
        echo "string1 is greater than string2">>success.txt
elif [ $string1 \< $string2 ]
then 
	echo "string1 is smaller than string2">>failure.txt
else
        echo "string1 and string2 are equal"
fi


# to concatenate string

c=$string1$string2

echo "The result after concatenating string1 and string2 is: $c"

echo ${string1^}  # lower-case
echo ${string2^^} # upper-case

echo ${string1^a} # if you want to capitalize first letter

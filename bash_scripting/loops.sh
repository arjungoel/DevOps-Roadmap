#! /usr/bin/bash

number=1

# while loop:
while [ $number -le 10 ]
do 
	echo "$number"
	number=$(( number+1  ))
done

# until loop:
until [ $number -ge 10 ]
do 
	echo "$number"
	number=$(( number+1 ))
done

# for loop:

#for i in 1 2 3 4 5 

# neat way:

for i in {0..100..5}
do 
	echo -n "The value of i is: "
	echo $i
done


# Another way of writing the for-loop 

for (( i=0; i<=5; i++ ))
do
	if [ $i -gt 4 ]
	then 
		break
	fi
	
	echo $i
done


# use of continue statement

for (( i=0; i<=5; i++ ))
do
        if [ $i -gt 6 ]
        then
                continue
        fi

        echo $i
done


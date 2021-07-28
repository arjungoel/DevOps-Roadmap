#! /usr/bin/sh

# `continue` jumps back to the loop condition and keeps running the loop

for (( i=1; i<=3; i++ ))
do
	if (( i==2 ))
	then 
		continue
	fi
	echo -n "The value of i: $i"
done


echo "=========================================================================================================================================="

# `break` will terminate the current loop, and continue execution at the first line after the loop ends

for (( i=1; i<=3; i++ ))
do
        if (( i==2 ))
        then
                break
        fi
        echo -n "The value of i:"
      	echo -n $i
done

	

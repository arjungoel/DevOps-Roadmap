#! /usr/bin/bash

n1=4
n2=5

echo $(( n1 + n2 ))
echo $(( n1 - n2 ))
echo $(( n1 * n2 ))
echo $(( n1 / n2 ))
echo $(( n1 % n2 ))



# another way of doing this:

echo $(expr $n1 + $n2 )


# expr don't recognize * so we have to use \*

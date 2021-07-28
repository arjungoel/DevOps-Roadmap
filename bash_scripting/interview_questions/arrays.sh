#! /usr/bin/bash

arr1=('Rahul Dravid' 'Sachin Tendulkar' 'Mahendra Singh Dhoni')
echo ${arr1[0]}

# To declare the numeric array
declare -a arr2=('Roger Federer' 'Novak Djokovic' 'Rafael Nadal')
echo ${arr2[1]}

# To declare the associative array
declare -A arr3=([Argentina]='Lionel Messi' [Portugal]='Cristiano Ronaldo' [France]='Paul Pogba')
echo ${arr3[France]}

#! /usr/bin/bash

# first way
var1=$(expr 120 - 100)
echo $var1

# second way
let var2=100+200
echo $var2

# third way
echo "scale=4; 33/10" | bc

# fourth way
var3=$((5*6))
echo $var3

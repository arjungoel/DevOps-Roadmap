#! /usr/bin/bash

function funcName()
{
	echo "this is my first function"
}

funcName   # calling the function


function funcPrint()
{
	echo $1 $2 $3 $4
}

funcPrint Hey Arjun hows you


function funcCheck() {
	value="checking the function"
	#echo $value
}
value="checking the global variable"
echo $value

funcCheck
echo $value

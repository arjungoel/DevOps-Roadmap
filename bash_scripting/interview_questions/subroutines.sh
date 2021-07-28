#! /usr/bin/bash

x=10
y=15

myFunc()
{
	local x=35

	y=40

	z=$((x+y))

	echo "The sum of $x and $y equals to: $z"
}

# calling the function
myFunc

echo "The sum of $x and $y is: $z"

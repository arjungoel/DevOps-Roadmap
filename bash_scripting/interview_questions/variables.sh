#! /usr/bin/bash

# system variables
echo $BASH

echo $BASH_VERSION

echo $HOME

# user-defined variables
num=123

echo "The value of number is: $num"


# declaring the variable in bash
declare -i num2=100

declare -i result=num2+100

echo $result

# deleting the variable in bash
num3=200
echo "The value of the number is: $num3"

unset num3
echo "The value of the number is: $num3"

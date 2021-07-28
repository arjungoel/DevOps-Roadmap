# /usr/bin/bash

echo "Enter the Hex number:"
read Hex


echo -n "The decimal value for $Hex is: "

echo "obase=10; ibase=16; $Hex" | bc



#! /usr/bin/bash

: '
echo "Enter directory name:"
read direct

if [ -d $direct ]
then 
	echo "$direct exists"
else
	echo "$direct doesn't exist"
fi


echo "Enter file name:"
read fileName

if [ -f $fileName ]
then
        echo "$fileName exists"
else
        echo "$fileName doesn't exist"
fi
'

# To append the text to the file

echo "Enter file name where you want to append:"
read fileName

if [ -f $fileName ]
then
        echo "enter the text to append:"
	read fileText
	echo $fileText >> $fileName
else
        echo "$fileName doesn't exist"
fi


# To read text from a file

echo "Enter filename from which you want to read:"
read fileRead

if [ -f $fileRead ]
then 
	while IFS= read -r line
	do 
		echo $line
	done < $fileRead
else
	echo "$fileRead doesn't exist"
fi


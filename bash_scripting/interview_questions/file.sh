#! /usr/bin/bash

path="/home/ec2-user/bash_scripting/interview_questions"
filepath="/home/ec2-user/bash_scripting/interview_questions/love.txt"


exit 1

if [ -d $path ]; then
	echo "Directory exists"
else
	echo "Directory doesn't exist"
fi

echo "============================================================="

if [ -f $filepath ]; then
	echo "file exists"
else
	echo "file doesn't exist"
fi

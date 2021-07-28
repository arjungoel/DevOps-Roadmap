#! /usr/bin/bash

# use of STDOUT and STDERR

#ls -al 1>file1.txt 2>file2.txt

ls +al 1>file3.txt 2>file2.txt

# If you want to use same file for stdout and stderr

ls +al >file3.txt 2>&1


# neat way of doing that 

ls -al >& file4.txt

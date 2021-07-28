#! /usr/bin/bash


# To create read-only variable
declare -r pwdfile=/etc/passwd

echo $pwdfile

# However if we try to override the variable path

pwdfile=/etc/passwd.txt

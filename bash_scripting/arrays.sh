#! /usr/bin/bash

job_title=('Software Engineer' 'Cloud Engineer' 'DevOps Engineer')

unset job_title[1]

job_title[1]="ML Engineer" 

echo "${job_title[@]}"

# To print the array value based on the index:

echo "${job_title[0]}"

# To print the indexes of the array:

echo "${!job_title[@]}"

# To print the number of values in an array:

echo "${#job_title[@]}"


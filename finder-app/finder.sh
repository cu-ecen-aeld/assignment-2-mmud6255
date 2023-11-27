#!/bin/sh
# Tester script for assignment 1 and assignment 2
# Author: Siddhant Jajoo
# Student : Muhammad_Mudasar

if [ "$#" -ne 2 ]; then
    echo "One or two arguments are missing"
    return 1
elif [ ! -d "$1" ]; then
	echo "Directory $1 does not exist."
	return 1
elif [ -z "$2" ]; then
	echo "No string passed or empty"
	return 1
fi

cd $1
filecount=$(find -type f | wc -l)
linecount=$(grep $2 $(find . -type f) | wc -l)
echo "The number of files are $filecount and the number of matching lines are $linecount"
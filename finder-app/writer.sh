#!/bin/sh
# Tester script for assignment 1 and assignment 2
# Author: Siddhant Jajoo
# Student : Muhammad_Mudasar

writefile=$1
writestr=$2


if [ $# -ne 2 ]; then
	echo "One or two arguments are missing"
	exit 1
fi

dir=$(dirname "$writefile")

if [ ! -d "$dir" ]; then
	mkdir -p "$dir"
	if [ $? -ne 0 ]; then
		echo "Unable to create dir."
		exit 1
	fi
fi


echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
	echo "Could not create file '$writefile'."
	exit 1
fi

echo "File '$writefile' created."
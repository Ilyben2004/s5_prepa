#!/bin/bash

echo "Please enter a directory:"
read sourcedir
echo "Please enter a file:"
read sourcefile

if [ -e "$sourcedir" ] && [ -e "$sourcefile" ]; then
	cp $sourcefile $sourcedir
	if [ $? -eq 0 ]; then
		echo "sucess"
	fi
elif [ -e "$sourcedir" ]; then
    echo "The directory exists, but the file does not exist."
else
    echo "The directory does not exist."
fi


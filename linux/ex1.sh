#!/bin/bash

echo "please enter a word"
read word
wordrev=$(echo $word | rev)

if [ "$word" = "$wordrev" ]; then
	echo "is pali"
else
	echo "is not pali"
fi

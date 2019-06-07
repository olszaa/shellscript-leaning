#! /bin/bash

echo "welcom $1 $2"

echo "it is $(date +"%I:%M.%P")"

read -p "dir name to create :" DIRNAME

if [ -d $DIRNAME ]
then
	echo "dir exit"
else
	mkdir -p $DIRNAME
	echo "dir created"
fi

read -p "welcome to read : " FILENAME

if [ -e $FILENAME ]
then
	if [ -s $FILENAME ]
	then
		cat $FILENAME
	else
		echo "fire is emtry"
	fi
else
	echo "fire does not exit"

fi

#!/bin/bash

echo "Enter the file name"
read newfile

if [ -f "$newfile" ]
then
        echo "File Already Exist"
        echo "Exiting Program"
	exit 0
else
	echo "File not Found"
	echo "Creating File:" $newfile
	touch $newfile



	echo "How many numbers should be added to the file?"
	read numberOfLines
        until [[ $numberOfLines =~ ^[0-9]$ ]]
	do
		echo "Please Enter a Valid Number:"
		echo
                read numberOfLines
	done


	for((i=0;i<$numberOfLines;i++))
	do
		echo $RANDOM  >> $newfile
	done
fi

exit 0

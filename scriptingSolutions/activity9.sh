#!/bin/bash

echo "Enter your filename"
read newfile

if [ -f "$newfile" ]
then
	echo "File Already Exist"
	echo "Exiting Program"
else
	echo "File Does Not Exist"
	echo "Creating new File" $newfile
	touch $newfile
fi

#!/bin/bash

# Set Directory and Date Variables #######
dir='/home/ec2-user/scripts/activity2/*'
date=`date +%Y-%m-%d`
##########################################

for file in $dir
do
	echo "Renaming $file to $file-$date"
	mv -- "$file" "${file%.*}.$date"
done

exit 0

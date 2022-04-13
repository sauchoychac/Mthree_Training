#!/bin/bash
echo "The Current User is: " $USER

echo "The Current Date is: " $(date '+%Y-%m-%d')

echo "The Current Time is: " $(date +"%T")

echo "The Current Working Directory is: " $PWD

echo "The Number of Files in the Current Working Directory is: " $(ls | wc -l)

echo "The Biggest File in the Current Directory is: " $(du -h * | sort -rh | head -1)

exit 0

#!/bin/bash

echo "Input a number to be reversed:"
read input

# Only allow numbers to be entered
test=`echo "$input" | egrep "^[0-9]+$"`

if [ "$test" ]
then
   echo "Your number reversed is:"
   echo $input | rev
else
   echo "Please only enter numbers"
fi

exit 0


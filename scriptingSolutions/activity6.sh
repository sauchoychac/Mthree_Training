#!/bin/bash

echo "This script will check if the first inputted number is larger than the second"
echo "Enter first number:"
read num1
if ! [[ "$num1" =~ ^[0-9]+$ ]] ;
  then exec >&2; echo "error: Not a number"; exit 1
fi

echo "Enter second number:"
read num2
  if ! [[ "$num2" =~ ^[0-9]+$ ]] ;
  then exec >&2; echo "error: Not a number"; exit 1
fi

if [ $num1 -gt $num2 ]
then
  echo True
else
  echo False
fi

# Difference
difference=$(( $num1 - $num2 ))
if (( $difference < 0 ))
then
  newDifference=$(( $difference * -1 ))
  echo "The difference is:" $newDifference
else
  echo "The difference is:" $difference
fi


exit 0

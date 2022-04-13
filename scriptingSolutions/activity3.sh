#!/bin/bash

# Set date and create file
date=`date +%Y.%m.%d`
touch $date.txt

# 5 Lottery Balls
echo "Your Lottery Balls are: " >> $date.txt
for i in {1..5}
do
  echo $(( $RANDOM % 50 + 1 )) >> $date.txt
done

# Bonus Ball
echo "The Bonus Ball is: " >> $date.txt
echo $(( $RANDOM % 10 + 1 )) >> $date.txt

exit 0


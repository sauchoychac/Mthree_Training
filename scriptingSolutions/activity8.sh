#!/bin/bash

#initializing the variables
min=99999
max=-99999
sum=0
pro=1
avg=0
choice=""

#loop to read max 10 numbers
echo "Enter 5 numbers:"
for((i=0;i<10;i++))
do

#if to check for whether 5 numbers have been entered
if [ $i -gt 4 ]
then
	echo "enter" $(($i+1))"th number: y/n "
	read choice

#checking whether choice is 'no'
if [ "${choice,,}" = 'n' ]
then
	break
fi
fi

#reading the user input
read enteredNumber
until [[ $enteredNumber =~ ^[-+]?[0-9]$ ]]
do
	echo "Please Enter a Valid Number:"
	echo
        read enteredNumber
done

a[i]=$enteredNumber

#calculating sum
sum=$(($sum+$enteredNumber))

#finding max value
if [ $enteredNumber -gt $max ]
then
	max=$enteredNumber
fi

#finding min value
if [ $enteredNumber -lt $min ]
then
	min=$enteredNumber
fi

#calculating product value
pro=$(($pro*$enteredNumber))
done

#calculating average
avg=$(($sum/$i))


#displaying results
echo "Numbers entered:" ${a[@]}
echo "Sum:" $sum
echo "Min:" $min
echo "Max:" $max
echo "Product:" $pro
echo "Average:" $avg

#!/bin/bash

answer=""

echo "Question 1: Type True"
read answer
until [[ ${answer,,} =~ (true|false) ]]
do
        echo "Please Enter a Valid Answer:"
        read answer
done

if [ ${answer,,} = true ]
then
	echo "Correct!"
else
	echo "Incorrect!"
fi

echo "Question 2: Type False"
read answer
until [[ ${answer,,} =~ (true|false) ]]
do
        echo "Please Enter a Valid Answer:"
        read answer
done

if [ ${answer,,} = false ]
then
        echo "Correct!"
else
        echo "Incorrect!"
fi


exit 0

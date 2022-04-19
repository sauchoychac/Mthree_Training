#!/bin/bash

#Initialise Variables
quiz_file=quiz.txt
score=0

#Check if Quiz file exists in current directory
if [ ! -f $quiz_file ]
then
	echo "Quiz file does not exist"
	exit 1
fi


while IFS= read -r -u9 line
do
	question=`echo $line | awk -F';' '{print$1}'`
	answer=`echo $line | awk -F';' '{print$2}'`
        echo $question
	read -p "True of False? " userAnswer
	until [[ ${userAnswer,,} =~ (true|false) ]]
	do
		echo "Invalid Input"
		read -p "True of False? " userAnswer
	done
	

	if [[ ${userAnswer,,} == ${answer,,} ]]
	then
		echo "Correct"
		((score++))
	else
		echo "Incorrect"
	fi

done 9< quiz.txt

echo "You Scored" $score "/10"
exit 0

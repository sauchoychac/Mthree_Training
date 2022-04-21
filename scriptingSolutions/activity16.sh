#!/bin/bash

#Initalise Variable
logFile=fixlog20220418202753.log
logFileLocation=~/FixGen/logs/fixlog20220418202753.log
fixGenScript=~/FixGen/fixGenerator.sh

echo "Count of Messages Sent"
echo $(grep -o -w '49=MTHREE' $logFileLocation | wc -w)

echo "Count of Messages Received"
echo $(grep -o -w '56=MTHREE' $logFileLocation | wc -w)
#Print header of CSV
#awk '{if ($21) }' $logFileLocation> logFileAct16.log

#Remove FixTags
#$(sed -i 's/150=2/New buy order/g' logFileEdit.log)

#!/bin/bash

#Initalise Variable 
logFile=fixlog20220418202753.log
logFileLocation=~/FixGen/logs/fixlog20220418202753.log
fixGenScript=~/FixGen/fixGenerator.sh

#Run fixGenerator script
#sh $fixGenScript
#echo "Log File Generated..."
#mv $LOGFILENAME $fixGenLogsDir


awk '{if ($21) print $11, "for", $7, "with order id", $21",", $17, "shares at price", $14}' $logFileLocation> logFileEdit.log

#Remove FixTags
$(sed -i 's/150=2/New buy order/g' logFileEdit.log)
$(sed -i 's/150=3/Partially fill/g' logFileEdit.log)
$(sed -i 's/150=4/Cancel Message/g' logFileEdit.log)
$(sed -i 's/150=0//g' logFileEdit.log)

$(sed -i 's/55=//g' logFileEdit.log)
$(sed -i 's/37=//g' logFileEdit.log)
$(sed -i 's/38=//g' logFileEdit.log)
$(sed -i 's/44=//g' logFileEdit.log)


$(sed -i 's/;//g' logFileEdit.log)

exit 0

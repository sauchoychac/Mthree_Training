#!/bin/bash

#Initialise Variables
fixGenLogsDir=~/FixGen/logs/
fixGenScript=~/FixGen/fixGenerator.sh
LOGFILENAME="fixlog"`date "+%Y%m%d%H%M%S"`".log"

#Check for Folder FixGen/Logs - and create it if not present----
if [ -d "$fixGenLogsDir" ]
then
        echo "Directory Exist"
else
        echo "Directory not Found"
        echo "Creating File:" $fixGenLogsDir
        mkdir $fixGenLogsDir
fi
#--------------------------------------------------------------

#Run the FixGenerator Script and Direct output to logs directory

sh $fixGenScript
echo "Log File Generated..."
mv $LOGFILENAME $fixGenLogsDir

#--------------------------------------------------------------

#Compress log files (not latest 3)

#Get Log Files Directory (Skipping first 3 Lines)
logArray=( $(ls -r  ~/FixGen/logs | tail -n+4) )

#Loop through array and compress file
for i in "${logArray[@]}"
do
	echo "$i"
	zip logFiles`date "+%Y%m%d%H%M%S"`".zip" ~/FixGen/logs/$i
done

#Move generated zip to FixGen Directory
mv logFiles`date "+%Y%m%d%H%M%S"`".zip" ~/FixGen

echo "Log files compressed"
#------------------------------------------------------------
                         #Cron




exit 0

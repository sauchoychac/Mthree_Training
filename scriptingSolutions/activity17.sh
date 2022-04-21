#!/bin/bash

logFile=fixlog20220418202753.log
logFileLocation=~/FixGen/logs/fixlog20220418202753.log
csvFile=$logFile".csv"

touch $csvFile

# Write header row in CSV
echo "Client, Message type, stock, quantity, price, side, order id, last quantity, exec id, last price" > $csvFile

awk '{print $4, $2, $7, $17, $14, $13, $21, $15, $16, $10}' $logFileLocation > $csvFile

#Remove Fixtags
$(sed -i 's/49=//g' $csvFile)
$(sed -i 's/55=//g' $csvFile)
$(sed -i 's/38=//g' $csvFile)
$(sed -i 's/44=//g' $csvFile)
$(sed -i 's/54=//g' $csvFile)
$(sed -i 's/37=//g' $csvFile)
$(sed -i 's/32=//g' $csvFile)
$(sed -i 's/17=//g' $csvFile)
$(sed -i 's/31=//g' $csvFile)

#Change Message Type to Meaningful Message
$(sed -i 's/35=8/Execution Report/g' $csvFile)
$(sed -i 's/35=0/Heartbeat/g' $csvFile)
$(sed -i 's/35=D/New Order Single/g' $csvFile)
$(sed -i 's/35=A/Logon/g' $csvFile)


#Change delimter for useful CSV
$(sed -i 's/;/,/g' $csvFile)

exit 0

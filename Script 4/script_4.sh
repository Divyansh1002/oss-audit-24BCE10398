#!/bin/bash

# script 4 - trying to read log file and find errors

logfile="sample.log"

# making my own log file for testing
echo "creating sample log..."
echo "INFO system start" > $logfile
echo "ERROR database fail" >> $logfile
echo "INFO login ok" >> $logfile
echo "WARNING disk high" >> $logfile
echo "ERROR timeout" >> $logfile
echo "INFO backup done" >> $logfile
echo "ERROR permission denied" >> $logfile

echo "log file created"
echo ""

# keyword
word=$1
if [ -z "$word" ]
then
    word="error"
fi

echo "searching for: $word"
echo ""

c=0

# reading file
while read l
do
    echo "$l" | grep -i "$word" > /dev/null
    if [ $? -eq 0 ]
    then
        c=$((c+1))
        echo "match line -> $l"
    fi
done < $logfile

echo ""
echo "total found: $c"
echo ""

echo "last matches:"
grep -i "$word" $logfile | tail -2

echo ""
echo "end of script"
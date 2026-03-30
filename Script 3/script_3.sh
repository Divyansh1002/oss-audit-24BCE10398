#!/bin/bash

# script 3

echo "checking some directories..."
echo ""

list="/etc /var/log /home /usr/bin /tmp"

for x in $list
do
    if [ -d $x ]
    then
        echo "Directory: $x"

        ls -ld $x > temp.txt
        p=$(awk '{print $1}' temp.txt)
        o=$(awk '{print $3}' temp.txt)
        g=$(awk '{print $4}' temp.txt)

        s=$(du -sh $x 2>/dev/null)
        s=$(echo $s | cut -f1)

        echo "Permissions: $p"
        echo "Owner: $o / $g"
        echo "Size: $s"
        echo ""
    else
        echo "$x not there"
        echo ""
    fi
done

# python folder check
py="/usr/lib/python3"

if [ -d $py ]
then
    echo "found python folder"
    ls -ld $py
else
    echo "python folder not found"
fi

rm -f temp.txt

echo ""
echo "finished"
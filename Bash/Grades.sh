#!/bin/bash
#Rasmi Lamichhane and Ehsan Karimi
# Resources
# stackoverflow.com
if [ $# -ne 1 ]
# $# means number of command line arguments (CLAs)
then
        echo "Usage: ./Grades.sh filename"
        exit 1
fi

file="$1"
#sort -t' ' -k3 $1

while read -r line 	#while you read each line 
do
        newline="$line"
        IFS=' '
	read -ra person <<< "$newline"
        if [ ! -z "${person[3]}" ] #if not null
        then
                add=$((${person[3]}+${person[4]}+${person[5]}))
                divide=$(($add/3))
                echo "$divide [${person[0]}] ${person[2]}, ${person[1]}">>"tmp.txt"
        fi
done < "$file"

sort -t' ' -k3,3 -k4,4 -k1,1  "tmp.txt"
# -t ==> field seperators 
rm "tmp.txt"

#!/bin/bash
#rasmi Lamichhane and Ehsan Karimi
#source Stack Overflow
if [ $# -ne 1 ]
# $# means number of command line arguments (CLAs)
then
        echo "Usage: ./RegexAnswers.sh filename"
        exit 1
fi

egrep "[0-9]$" $1 | wc -l
grep '^[^AEIOUaeiou]' $1 | wc -l
egrep "\b[a-zA-Z]{12}\b" $1| wc -l
egrep [0-9]{3}-[0-9]{3}-[0-9]{4} $1| wc -l
egrep 303-[0-9]{3}-[0-9]{4} $1| wc -l
egrep  '^[AEIOUaeiou].*[0-9]$' $1 |wc -l 
egrep '@.*geocities' $1 |wc -l
grep @ $1|egrep -v "[\-\.\_a-zA-Z0-9]+@[\-\.\_a-zA-Z0-9]+[\.][\-\.\_a-zA-Z0-9]+" |wc -l

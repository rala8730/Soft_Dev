#!/bin/bash
#rasmi Lamichhane and Ehsan Karimi
#script starting point
if [ $# -ne 1 ]
# $# means number of command line arguments (CLAs)
then
        echo "Usage: ./GradesAwk.sh filename"
        exit 1
fi

awk '{if (NR!=0){for(i=4;i<=NF;i++)j+=$i;print int(j/3),"["$1"]",$3",",$2;j=0}}' $1|sort -k3,3 -k4,4 -k1,1

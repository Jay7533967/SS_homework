#!/bin/bash

varScore[0]="0"

read -p "How many subject need to calculate?" numSubjects

if [[ ! $numSubjects =~ ^[0-9]+$ || $numSubjects -eq 0 ]]; then
    echo "Invalid input. Please enter a positive integer."
    exit 1
fi

for ((i=1; i<= numSubjects; i++))
do
	read -p "Subject $i Score: " varScore[$i]
	(( varScore[0] += varScore[i] ))
done
	echo "Total score: ${varScore[0]}"
	echo "Average score: `expr ${varScore[0]} / 5`"

exit 0

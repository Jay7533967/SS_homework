#!/bin/bash
#三角形

for ((x=1; x < 10; x++))
do
    for ((y=1; y < 10; y++))
    do
        (( calc = $y * $x ))
        echo -n -e "$y x $x = $calc\t"  
    done
    echo ""
done
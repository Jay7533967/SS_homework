#!/bin/bash
#九九乘法表(while+for)

x=1

while [ $x -le 9 ]
do
    for ((y=1; y < 10; y++))
    do
        (( calc = $y * $x ))
        echo -n -e "$y x $x = $calc\t"  
    done
    echo ""
    (( x++ ))
done
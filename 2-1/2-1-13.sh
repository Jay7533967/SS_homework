#!/bin/bash
#正方形

for ((x=8; x>0; x--))
do
    for ((y=1; y < x; y++))
    do
        echo -n "  "
    done

    for ((z=8; z >= x ; z--))
    do
        echo -n "* "
    done
    echo ""
done
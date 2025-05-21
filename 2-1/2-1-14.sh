#!/bin/bash

for ((x=0; x<8; x++))
do

    case $x in
        0|7 )
            for ((y=0; y<8; y++))
            do
                echo -n "* "
            done
        ;;
        * )
            for ((z=0; z<8; z++))
            do
                case $z in
                    0|7 )
                        echo -n "* "
                    ;;
                    * )
                        echo -n "  "
                    ;;
                esac
            done
        ;;
    esac

    echo ""
done
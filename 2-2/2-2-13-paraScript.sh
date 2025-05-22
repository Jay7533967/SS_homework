#!/bin/bash

[ -z $1 ] && [ -z $2 ] && echo "[EXAMPLE] $0 332 12" && exit 1

if [[ $1 =~ ^[0-9]+$ && $2 =~ ^[0-9]+$ ]]; then
    echo "$1 + $2 = `expr $1 + $2`"
    exit 0
else
    echo "Invalid input. Please enter a positive integer."
    exit 1
fi
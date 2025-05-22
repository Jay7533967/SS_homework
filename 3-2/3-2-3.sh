#!/bin/bash
#簡單密碼產生器（指定長度與英數字組合）

read -p "Enter password length: " length
chars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
password=""

for (( i=0; i<length; i++ )); do
    rand=$(( RANDOM % ${#chars} ))
    password="${password}${chars:$rand:1}"
done

echo "Generated password: $password"

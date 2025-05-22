#!/bin/bash
#產生 30 個 250~500 間不重複的亂數並存入陣列
declare -a numbers=()
while [ "${#numbers[@]}" -lt 30 ]; do
    rand=$(( RANDOM % 251 + 250 ))  # 產生 250~500 間的亂數
    if [[ ! " ${numbers[@]} " =~ " $rand " ]]; then
        numbers+=("$rand")
    fi
done

# 顯示結果
echo "Random number list:"
printf "%s " "${numbers[@]}"
echo
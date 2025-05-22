#!/bin/bash
#使用字串作為索引鍵（key-value 形式）
#常用於對應查詢、資料結構模擬
#Bash 4.0 版本以上才支援

declare -A user_email

user_email["alice"]="alice@example.com"
user_email["bob"]="bob@example.com"

for name in "${!user_email[@]}"; do
  echo "$name 的信箱是 ${user_email[$name]}"
done
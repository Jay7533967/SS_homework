#!/bin/bash
# 1A2B 猜數字遊戲

answer_digits=($(shuf -i 0-9 -n 4))  # 隨機產生 4 個不重複的數字，存成陣列
answer="${answer_digits[*]}"
answer="${answer// /}"  # 去除陣列間的空白，組成字串
attempts=0
history=()

echo "Welcome to the 1A2B guessing game! Please enter a 4-digit number with no repeating digits:"

while true; do
    read -p "Enter your 4-digit guess: " guess

    # 檢查是否為正確的 4 位數字格式
    [[ ! "$guess" =~ ^[0-9]{4}$ ]] && echo "Invalid format. Please enter 4 digits!" && continue

    # 檢查是否有重複數字
    if [[ "$(echo "$guess" | grep -o . | sort | uniq | wc -l)" -ne 4 ]]; then
        echo "Digits must not repeat!"
        continue
    fi

    ((attempts++))
    A=0
    B=0

    # 將猜測的數字轉為陣列
    guess_digits=($(echo "$guess" | grep -o .))
    used_in_answer=()
    used_in_guess=()

    # 比對 A（數字與位置都正確）
    for i in {0..3}; do
        if [[ "${guess_digits[i]}" == "${answer_digits[i]}" ]]; then
            ((A++))
            used_in_answer[i]=1
            used_in_guess[i]=1
        fi
    done

    # 比對 B（數字正確但位置錯誤）
    for i in {0..3}; do
        [[ "${used_in_guess[i]}" == 1 ]] && continue  # 已配對過的不再比對
        for j in {0..3}; do
            if [[ "${used_in_answer[j]}" != 1 && "${guess_digits[i]}" == "${answer_digits[j]}" ]]; then
                ((B++))
                used_in_answer[j]=1
                break
            fi
        done
    done

    # 紀錄歷程
    history+=("$guess --> $A A $B B")
    echo "$A A $B B"

    # 若猜對，顯示結果並結束
    if [[ $A -eq 4 ]]; then
        echo "Congratulations! The answer is: ${answer_digits[*]// /}. You made $attempts attempts."
        echo "Guess history:"
        printf "%s\n" "${history[@]}"
        break
    fi
done
#!/bin/bash


read -p "Please enter File-Name:" varFileName

#檢查檔案是否存在並提示錯誤訊息
if [[ ! -f "$varFileName" ]]; then
    echo "Error: File '$varFileName' does not exist." >&2
    exit 1
fi

noLine=1

while read txtLine
do
	echo -e "\t $noLine $txtLine"
	let noLine=$noLine+1
done < $varFileName

exit 0

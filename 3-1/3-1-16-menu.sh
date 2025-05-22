#!/bin/bash

varKey=1
while [ $varKey -ne "3" ]
do
	clear
	echo "=========================="
	echo "     (1) Say Hello."
	echo "     (2) Time Now"
	echo "     (3) EXIT"
	echo "=========================="
	read -n 1 -p "Please chose the function: " varKey

	case $varKey in
		1 )
			echo -e "\n\aHello!\n"
			;;
		2 )
			echo -e "\n\aTime is : `date`\n"
			;;
		3 )
			varKey=3
			echo ""
			#新增提示離開訊息並離開迴圈真正結束程式，不會卡在"Press any key to continue..."
			echo "Exit the menu." && echo "Good bye!"
			break
			;;
		* )
			echo -e "\n\aNo function in $varKey"
			varKey=0			
			;;			
	esac
	read -n 1 -p "Press any key to continue..."
done

exit 0

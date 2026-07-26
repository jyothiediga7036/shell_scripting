#!/bin/bash

while true
do
	echo "=========== MENU =========="
	echo " 1)show the menucard"
	echo "2) order"
	echo "3) paymet"
	echo "4) exit"
	read n
	case $n in
		1) echo " the items are biryani , starters, juices, pakodi, snakes,"
			;;
		2) echo " ur oerder plz"
			;;
		3) echo "pay the bill the amount is 1200"
			;;
		*) echo "thank you wisit again"
			break
			;;
	esac
done


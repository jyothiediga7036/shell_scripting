#!/bin/bash
read -p "enter the numbers(1-7)" n
case $n in
	1)  echo "monday"
		;;
	2)  echo "tuesday"
		;;
	3)  echo "wednesday"
		;;
	4)  echo "thrusday"
		;;
	5)  echo "friday"
		;;
	6) echo "saturday"
		;;
	7)  echo "sunday"
		;;
	*) echo "invalid"
	;;
esac


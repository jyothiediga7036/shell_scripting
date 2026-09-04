#!/bin/bash

read -p "battery levels" battery
read -p "temparature levels " temparature
read  -p "stating speed of a thar car" speed

echo "check the status of car"
while true ;
do
	echo "====Device diagnostic menu===="
	echo "1.check battery"
	echo "2. check temparature"
	echo "3. check device status"
	echo "4.exit"
	read -p "choose the option" n
	
	case $n in
		1) if (( $speed > 40))
		then
			battery=$((battery-20))
		else
			battery=$((battery - 10))
		fi
		;;
		2) if(( $speed > 40))
		then
			temparature=$((temparature + 30))
		else
			temparature=$((temparature - 10))

		fi
		;;
		3) echo "temparature : $temparature"
		echo "speed : $speed"
		echo "battery : $battery"
		;;
		*) echo "invalid"
		;;
	esac
	
done



<<COMMENT
status=false
while true;
do

echo "====== Embedded device menu ======"
echo "1. check LED status"
echo " 2.Turn LED on "
echo " 3. Turn LED off"
 echo "4. Exit "
read -p "enter choise" n

case $n in
	1) if [[ $status == true ]];
	then
		echo "LED on "
	else
		echo "LED off"
	fi
	;;
	2) status=true
	;;
	3) status=false
	;;
	4)echo "invalid "
		
	;;
esac

done
COMMENT



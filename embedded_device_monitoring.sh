#!/bin/bash
show_system_info()
{
	b=$1
	t=$2
	s=$3
	
	echo "host name : $b"
	echo "current User : $t"
	echo "current directory : $s"
	echo "no of arguments : $#"
}
	
	

read -p "enter starting battery range " battery
read -p "enter the temparature " temp
read -p "device start or stop " status

while true 
do
	echo "===== Embedded Device Monitoring======"
	echo "1. check battry"
	echo "2. check tempareture "
	echo "3.check device status "
	echo "4.show system information"
	
	read -p "choose options" n
	case $n in
		1) if (( battery >= 30 ))
		then
			echo "Battery is ok"
		else
			echo " Low bttery"
		fi
		;;
		2) if (( temp <= 80 ))
		then
			echo " Temparature is Normal "
		else
			echo "Warning : High Tempareture"
		fi
		;;
		3)  if (( $status == 1 ))
		then
			echo "Device is running "
		else
			echo "Device is stopped"
		fi
		;;
		4) show_system_info $(hostname) $(whoami) $(pwd)
		 ;;
		5) echo "Existing embedded Linux monitor "
		;;
		*) echo "invalid"
		;;
	esac
done

		
	


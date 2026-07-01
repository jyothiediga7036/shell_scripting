#!/bin/bash

file="employee.txt"
while true
do
echo "1. add employee name , 2 view details 3. search employe 4 . delete employe 5. exit"

read op

	case $op in
	1) 
		echo "enter the employee id"
		read id
		echo "enter the name "
		read name
		echo "employee salary"
		read salary
		
		echo "$id $name $salary ">>$file
		echo "employee added successfully"
		;;
	2)
	echo "employe reacored"
	cat $file
	;;
	
	3)
	echo "enter the employee id"
	read id
	
	greap"^$id" $file
	
	if [ $? -ne 0 ]
	then 
		echo "employee id not found"
	fi
	;;
	4)
        echo "Enter Employee ID:"
        read id

        grep -v "^$id " $file > temp
        mv temp $file

        echo "Employee Deleted"
        ;;

    5)
        exit
        ;;

    *)
        echo "Invalid Choice"
        ;;
    esac
	
done
	
	
	
	
	
	
	
	

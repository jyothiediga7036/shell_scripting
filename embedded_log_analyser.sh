#!/bin/bash

show_device_info()
{
    n=$1
    d=$2

    echo "Device name : $n"
    echo "Device name length : ${#n}"

    if [[ "$d" == "RUNNING" ]]
    then
        echo "Device is running"
    else
        echo "Device is stopped"
    fi
}

<<COMMENT
read -p "Enter the number of sensor temperature values: " n

for (( i=0; i<n; i++ ))
do
    read -p "Enter temperature $((i+1)): " temp[i]
done

read -p "Enter device name: " name
read -p "Enter device status (RUNNING/STOPPED): " status
COMMENT

while true
do
    echo "===== Embedded Device Log Analyzer ====="
    echo "1. Display Temperatures"
    echo "2. Show Min/Max Temperature"
    echo "3. Show Average Temperature"
    echo "4. Show High Temperature Count"
    echo "5. Show Device Information"
    echo "6. Exit"

    read -p "Choose option: " c

    case $c in

        1)
            echo "Temperature values are:"

            for (( i=0; i<n; i++ ))
            do
                echo "${temp[i]}"
            done
            ;;

        2)
            min=${temp[0]}
            max=${temp[0]}

            for (( i=1; i<n; i++ ))
            do
                if (( temp[i] < min ))
                then
                    min=${temp[i]}
                fi

                if (( temp[i] > max ))
                then
                    max=${temp[i]}
                fi
            done

            echo "Minimum Temperature: $min"
            echo "Maximum Temperature: $max"
            ;;

        3)
            avg=0

            for (( i=0; i<n; i++ ))
            do
                avg=$((avg + temp[i]))
            done

            avg=$((avg / n))

            echo "Average Temperature: $avg"
            ;;

        4)
            condition_count=0

            for (( i=0; i<n; i++ ))
            do
                if (( temp[i] > 80 ))
                then
                    condition_count=$((condition_count + 1))
                fi
            done

            echo "High Temperature Count: $condition_count"
            ;;

        5)
            show_device_info "$name" "$status"
            ;;

        6)
            echo "Exit"
            break
            ;;

        *)
            echo "Invalid choice"
            ;;

    esac

done < sensor.txt

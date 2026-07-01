
<<COMMENT
a=10
while [ $a -gt 0 ]
do
	echo " a value  : $a"
	#a =`expr $a - 1`
	a=$((a-1))
done
COMMENT


<<COMMENT
for i in 0 1 2 3
do
	echo $i
done
COMMENT
<<COMMENT
for (( i=1 ; i<10 ;i++ ))
do 	
	
	if [ $i -gt 5 ]
	then 
		break
	fi
	echo $i
done
echo $i
COMMENT
<<COMMENT
a=1
until [ $a -gt 5 ]
do
	echo " a value  : $a"
	#a =`expr $a - 1`
	a=$((a+1))
done
COMMENT
<<COMMENT
select fruit in Apple Mango Orange
do
    echo "Number entered: $REPLY"
    echo "Fruit selected: $fruit"
    break
done


COMMENT
#!/bin/bash

select choice in Add Delete Update Exit
do
    case $choice in
        Add)
            echo "Add selected"
            break
            ;;
        Delete)
            echo "Delete selected"
            ;;
        Update)
            echo "Update selected"
            ;;
        Exit)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done


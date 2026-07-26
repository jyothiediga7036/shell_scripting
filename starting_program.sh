#!/bin/bash
<<COMMENT
echo "hello world"

read username
echo "displayed user name  : $username " 

read x
read y
#r=$(( x + y ))
echo "result : $(( x + y ))"
echo "result : $(( x - y ))"

# swap two numbers 
read n1
read n2

x=$n1
n1=$n2
n2=$x
echo "two nembers are : $n1 $n2"



#find the largest number

l1=10
l2=20
if (( l1 > l2 ))
then 
	echo "l1 is largest number"
else
	echo "l2 is largest number"
fi


#find leap year or not
read year
echo "year is $year"
if (( (( $year % 400 == 0 ))||(( $year % 4 == 0 )) && (( $year % 100 != 0 )) ))
then 
	echo "leap year"
else
	echo " not leap year"
fi


#square of a number
read x
echo "square of a number is  : $((x * x))"

COMMENT

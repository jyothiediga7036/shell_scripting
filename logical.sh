#!/bin/bash 
read x
read y
if [ $x  -gt $y -a $y -lt 100 ]
then
	echo "AND operation is success"
else
	echo "AND operation is failure"
fi

if [ $x  -gt $y -o $y -lt 100 ]
then 
	echo "OR operation is success"
else
 	echo "OR operation is failure"
 fi
 

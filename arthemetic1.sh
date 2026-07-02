#!/bin/bash
# advanced mode
a=10
b=20

echo "add: $((a+b))"
echo "sub:$((a-b))"
echo "mul :$((a*b))"
echo "div :$((a/b))"

if [ $a == $b ]
then
 	echo "a equal to b"
 fi
 
 if [ $a != $b ]
 then 
 echo "a is not equal to b"
 fi
if (( a > b ))
then 
	echo "a is greater then  b"
else
	echo " a is less than b "
fi 

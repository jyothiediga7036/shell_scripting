#!/bin/bash
<<COMMENT
fruits[0]="Apple"
fruits[1]="orange"
fruits[2]="banana"
fruits[3]="mango"

echo "first element:${fruits[0]}"
echo "third element:${fruits[2]}"
echo "all elements :${fruits[*]}"
echo "all elements :${fruits[@]}" 

COMMENT
fruit=( "apple"  "banana" "mango" )
echo "all elemnts : ${fruit[@]}"
unset 'fruit[1]'   # removing specific element
echo "array  ${fruit[@]}"

<<COMMENT
read n
for ((i=0; i<n;i++ ))
do
	read fruit[i]
	echo "fruit :${fruit[i]}"
done

echo "array length is ${#fruit[@]}"

echo "${sorted[@]}"
COMMENT



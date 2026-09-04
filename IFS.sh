#!/bin/bash
#read a b c
#echo "$a $b $c"

#str="red orange blue green"
IFS=','
str="red,orange,blue,green"
for i in $str
do
	echo "$i"
done


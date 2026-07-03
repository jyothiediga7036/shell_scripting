#!/bin/bash

read -t 5 n1
if (( n1 ))
then 
	echo "after waiting 5 sec the number is : $n1"
else
	echo "user can't provide the input within the time "
fi


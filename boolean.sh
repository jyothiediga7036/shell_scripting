#!/bin/bash

a=10
b=20
if [ $a -lt 20 -o $b -gt 100 ]  # or operator (||)
then 
echo " true"
else
echo "false"
fi

if [ $a -lt 20 -a $b -gt 100 ]  #and operator(&&)
then 
echo " true"
else
echo "false"
fi



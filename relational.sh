#!/bin/bash
a=10
b=20

if [ $a -eq $b ]
then 
echo "a equal to b"
else
echo "a is not equal to b"
fi

if [ $a -ne $b ]
then 
echo "a  not equal to b"
else
echo "a  equal to b"
fi

if [ $a -gt $b ]
then 
echo "a greater b"
fi

if [ $a -lt $b ]
then 
echo "a less b"
fi

if [ $a -ge $b ]
then 
echo "a greate equal b"
fi



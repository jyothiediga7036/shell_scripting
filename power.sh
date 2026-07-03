#!/bin/bash
read n
read x
echo "power of $n is : $(( n ** x ))"
var=9
echo "square root number :$(echo "sqrt($var)" | bc )"

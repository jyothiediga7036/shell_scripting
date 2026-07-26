#!/bin/bash
<<COMMENT
add()
{	
	n1=$1
	n2=$2
	echo $(( n1 + n2 ))
}
r=$(add 12 20)   # collect  the function return  value
echo "r= $r"
COMMENT

export var="im embedded engineer" # global variable
fun()
{
	local v=$var #local varaible 
	echo "$v"
	v="im embedded traine engineer" #here we can't modify the global var we can modify the only local it not effect the global var
}
fun 
echo $var 


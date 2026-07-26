#!/bin/bash

set -e

echo "Start"

ls does_not_exist

echo "End"

<<COMMENT
v=$(ls prime3.sh )
s=$?
if [[ $s == 0 ]]
then
	echo "file exist"
else
	echo "file does not exist"
fi
COMMENT



<<COMMENT
#find .c and .txt files in prasent working directory
s=0
c=0
for file in ./*
do
	if [[ "$file" == *.c ]]
	then
		((c++))
	fi
	if [[ "$file" == *.txt ]]
	then
		((s++))
	fi
done
echo ".c files  : $c"
echo ".txt files : $s"
COMMENT



<<COMMENT
r=$(ls -l |grep '\.c$'|wc -l)
echo $r 
COMMENT

<<COMMENT
echo "enter a file name"
read file
if [ -e "$file" ]
then 
	echo "file exist"
	if [ -f "$file" ]
	then 
		echo  "regular file"
	else
		echo "no regular "
	fi
	
	if [ -d "$file" ]
	then
		echo "directory file"
	else
		echo " not a directory"
	fi
	if [ -L "$file" ]
	then 
		echo "symbolic link"
	else
		echo "not symbolic link"
	fi
	
else
	echo " no file exist"
fi
	
COMMENT


<<COMMENT
read -p "enter a string " str
echo "string is  :$str"
echo "length : ${#str}"

if [[ -z "$str" ]]
then
	echo "string is empty"
else
	echo " string is  no empty"
fi

echo "upper case : ${str^^}"
echo "lower case : ${str,,}"
read -p "enter a string " str	
read -p "enter another string " str1
if [[ "$str" == "$str1" ]]
then
	echo "both are equal "
elif [[ "$str" != "$str1" ]]
then 
	echo " both strings not equal"
fi

if [[ -z "$str1" ]]
then
	echo "string is empty"
else
	echo "string is not empty"
fi

COMMENT





<<COMMENT
a=(10 20 30 40 50)
echo "all elemets: ${a[@]}"
echo "length : ${#a[@]}"
echo "first element : ${a[0]}"
echo "last element :${a[4]}"

echo "enter the array elements"

for (( i=0;i<5;i++))
do
	read a[i]
done

echo "all elements :${a[@]}"

sum=0
l=${a[0]}
m=${a[0]}
for (( i=0;i<5;i++))
do
	sum=$((sum + a[i]))
	if (( l < a[i] ))
	then
		l=${a[i]}
	fi
	
	if (( m > a[i] ))
	then
		m=${a[i]}
	fi
	
done

echo "maximum : $l"
echo "minimun :$m"
echo "sum : $sum"

COMMENT




<<COMMENT
calculate_sum()
{
	local n=$1
	local n1=$2
	echo $((n + n1))
}
r=$(calculate_sum 10 20)
echo "Sum : $r"
COMMENT


<<COMMENT
while((1))
do
read -p "enter the number" n1
read -p " enter nu,mber 2 " n2
read -p "enter the character" c
case "$c" in 
	+) echo "addition $((n1 + n2 ))"
	;;
	-) echo "subtraction $((n1 - n2 ))"
	;;
	\*) echo "multiplication $(( n1 * n2))"
	;;
	/)echo "division $((n1 / n2 ))"
	;;
	*)echo "invalid operator"
esac
done
COMMENT
<<COMMENT
while ((1))
do
	read -p "enter the number " n
	echo $n
	if (( $n <= 0))
	then
		echo "ivalid number "
	else
		echo "valid number "
		break
	fi
done
 
COMMENT



<<COMMENT
read -p "enter the number " n
echo $n
sum=0
for (( i=1;i<n ;i++))
do
	echo $i
	sum=`expr $sum + $i `
done
echo "sum = $sum"

COMMENT



<<COMMENT
#!/bin/bash
read name age
echo "name : $name" 
echo "age: $age"
if (($age >= 18))
then 
	echo "Adulte"
else
	echo "Minor"
fi

COMMENT
<<COMMENT
#!/bin/bash
v=$(whoami)
v1=$(pwd)
v2=$(date)
v3=$(ls -l|wc -l)
echo "current user :$v"
echo "current directory: $v1"
echo "current data : $v2"
echo "number of files : $v3"

echo "enter the number 1"
read n1
echo "enter number 2"
read n2

echo "addition  :$((n1 + n2))"
echo "subtraction  :$((n1 - n2))"
echo "multiplication  :$((n1 * n2))"
#echo "division  :$((n1 / n2))"
echo "modulus  :$((n1 % n2))"
COMMENT

<<COMMENT
echo "enter the number"
read n
if (($n > 0))
then 	
	echo "positive"
elif (($n < 0))
then 
	echo "negative"
else
	echo "zero"
fi

if (( $n % 2==0 ))
then 
	echo "Even"
else
	echo "odd"
fi
COMMENT
<<COMMENT
#file descriptors 
echo "enter a file name"
read file
if [ -e "$file" ]
then 
	echo "file exist"
	if [ -f "$file" ]
	then 
		echo  "regular file"
	else
		echo "no regular "
	fi
	
	if [ -r "$file" ]
	then
		echo "readble file"
	else
		echo " not readable"
	fi
	if [ -w "$file" ]
	then 
		echo "writable file"
	else
		echo "not writable"
	fi
	if [ -x "$file" ]
	then 
		echo "executable file"
	else
		echo "not executable file"
	fi
	
else
	echo " no file exist"
fi

COMMENT
	


























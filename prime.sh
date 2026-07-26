<<COMMENT
add()
{
	#r=$(( x + y ))
	awk "BEGIN {print $x + $y}"
#echo "result := $r "
}
read x
read y
add x y

COMMENT 

prime()
{
n=$1
	for (( i=2;i<n;i++ ))
	do
		if(( n%i==0 ))
		then
			break
		fi
	done
	if [ $i -eq $n ]
	then 
		echo "prime number : $n "
	else
		echo "not prime "
	fi
}
read x
prime $x


<<COMMENT

read -t -p "enter the inputs :"a b c
echo "$a $b $c"



echo "Enter the number of elements:"
read n

r=0

for ((i=0; i<n; i++))
do
    read arr[$i]
done

echo "Array elements are:"
for ((i=0; i<n; i++))
do
    echo "${arr[i]}"
    (( r = r + arr[i] ))
done

echo "Result: $r"
COMMENT

<<COMMENT

var=(pwd)  #print directory files
$var

var=$(pwd)
echo "$(var)"

var="jyothi"
$var
COMMENT



n=${ls}
#echo "prasent :$var"  # not work 
n="hello"
echo " :$n 123"





























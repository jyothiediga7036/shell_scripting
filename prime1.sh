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



#!/bin/bash
<<COMMENT
for x in $@
do
	echo "command is :$x"
done
COMMENT

prime ()
{
	v=$1
	for (( i=2;i<v;i++ ))
	do
		if (( v % i == 0 ))
		then 
			break
		fi
	done
	 if(( i == v ))
	 then
	 	echo "prime number is : $v"
	 fi
}
	  

for x in "$@"
do
	prime "$x"
done
echo "hello wolrd"



s1="jyothi"
s2="renu"
if [ "$s1" != "$s2" ]
then 
echo "both not equal"
fi

if [ -z "$s1" ]
then 
echo "empty string"
fi

echo ${s1^^}  # uppercase
echo ${s1,,} # lower case


str="i like linux"
echo ${str/linux/ubantu}   # replace linux with ubantu

read n
echo $n
echo ${n:0:7}

echo ${#s1} // string length 

	

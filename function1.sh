<<COMMENT
hello()
{
	#echo "hello world"
	echo "hi :$1 $2"
	return 10
}
#hello   - calling without arg

hello jyothi renu  # calling with arg
ret=$?
echo "return value is :$ret"
COMMENT
<<COMMENT
#nested function

fun1()
{
	echo "first function"
	func2
}
func2()
{
	echo "second function"
}
fun1
COMMENT

add()
{
	
	sub()
	{
		echo " sub function variable : $1 $2 "
	}
	
	echo "add function variables :$1 $2"
	sub $3 $4
} 
add 23 34 5 6

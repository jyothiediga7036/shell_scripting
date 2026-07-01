read x
read y
echo "x= $x, y= $y"
#f=`expr $x + $y`
#f=$(( x + y ))
awk "BEGIN {print $x+$y}"

echo "result : $f"

echo "scale=2; sqrt(25)" | bc
echo "2^5"| bc



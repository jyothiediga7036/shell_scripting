echo ${var:-"Apple"}
echo "i love ${var}"  # output : i love 

echo ${var:="orange"}
echo "but i also love ${var}"# output : but i also love orange

unset var
echo ${var:+"banana"}
echo "i hate $var" # i hate 

var="kiwi"
echo ${var:?"print this message"}
echo "i love ${var}"# i love kiwi



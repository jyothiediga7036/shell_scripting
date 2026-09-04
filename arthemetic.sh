#!/bin/sh

a=10
b=20
add=`expr $a + $b`
sub=`expr $a - $b`
mul=`expr $a \* $b`
div=`expr $a / $b`
echo "add :$add"
echo "sub :$sub"
echo "mul :$mul"
echo "div :$div"
echo "equal :$[$a == $b]"
echo "not equal :$[$a != $b]"

let x=$a+$b
echo "let result $x"


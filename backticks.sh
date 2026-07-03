#!/bin/bash

<<COMMENT
var=`ls`
echo "$var"

var=$(ls)
echo "$var"
COMMENT

kernal=$(uname -r)
echo "user name : $kernel"

var=`df -h | grep tmpfs`
echo $var

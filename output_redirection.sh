#!/bin/bash
read -s -p "ente rthe password" n
echo "$n"
read -p "enter the number" n1
test 10 -gt $n1 && echo "yes "||echo "no"


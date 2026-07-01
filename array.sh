#!/bin/bash
fruits[0]="Apple"
fruits[1]="orange"
fruits[2]="banana"
fruits[3]="mango"

echo "first element:${fruits[0]}"
echo "third element:${fruits[2]}"
echo "all elements :${fruits[*]}"
echo "all elements :${fruits[@]}"

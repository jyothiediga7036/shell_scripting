#factorial of a number
#!/bin/bash
echo "enter the number"
read n
mul=1
for (( i=1;i<=n; i++ ))
do
	mul=$((mul * i ))
done
echo "factorial of $n is  : $mul"

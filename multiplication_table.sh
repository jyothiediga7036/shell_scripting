# multiplication table 
#!/bin/bash
read n;

echo "$n table is:"
for ((i=1; i<=10; i++))
do
	echo "$(( n * i ))"
done


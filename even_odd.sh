#even or odd in a number 
#!/bin/bash
read n
if((n % 2 == 0))
then
	echo "even number"
else
	echo "odd number"
fi



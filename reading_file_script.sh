<<COMMENT
#!/bin/bash
LINE=1
count=0
while read -r CURRENT_LINE
do
	((count++))
	echo "$LINE : $CURRENT_LINE"
	((LINE++))
done < reading_file.txt
echo "total number of lines: $count"
COMMENT

<<COMMENT
#!/bin/bash
#convert lower case to upper case
while read -r line
do
    echo "$line" | tr '[:lower:]' '[:upper:]'
done < reading_file.txt
COMMENT

<<COMMENT
#!/bin/bash
# line contain numbers or not 
while read -r line
do
    if [[ "$line" =~ [0-9] ]]
    then
        echo "$line"
    fi
done < reading_file.txt
COMMENT

#!bin/bash
while read -r line
do
	if [[ $line == "mango" ]]
	then 	
		echo "$line"
	fi
done < reading_file.txt








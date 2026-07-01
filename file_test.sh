#!/bin/bash
if [ -e shell.sh ]
then 
	 echo "file exist"
fi

# regular file

if [ -f shell.sh ]
then 
	echo "regular file"
fi

#directory
if [ -d shell_script ]
then
	echo "directory exixts"
fi

#check read  write excute permissions
if [ -r shell.sh ]
then 
	echo "read"
fi

if [ -w shell.sh ]
then 
	echo "write"
fi

if [ -x shell.sh ]
then 
	echo "excute"
fi

#check file empty
if [ -s p2.cpp ]
then 
echo " file contain data"
else
	echo "file not data"
fi

#check symbolic
if [ -L shell.sh ]
then 
	echo "symbolic link"
fi

#check character device
if [ -c /dev/tty ]
then 
echo "character device"
fi





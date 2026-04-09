#!/bin/bash
echo  'host'
read host
ping -c 1 $host > /dev/null 2>&1
if [ $? -eq 0 ]; then
	echo 'work'
else
	echo 'rip'
fi

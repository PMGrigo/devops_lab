#!/bin/bash
for ip in 192.168.1.1 8.8.8.8 1.1.1.1; do
	ping -c 1 $ip >/dev/null 2>&1
	if [ $? -eq 0 ]; then
		echo "$ip Доступен"
	else
		echo "$ip Недоступен"
	fi
done

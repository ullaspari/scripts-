#!/bin/bash

size=`df -h . | awk -F " " '{print$(NF-1)}' | tail -1 | sed "s/%//g"`
if [ $size -gt 25 ]; then
	echo "The disk size is Full"
	echo "Percentage Usage is $size"

echo "send mail" | mail -s "disk size" -c "ullaspari223@gmail.com"
fi

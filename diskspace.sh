#!/bin/bash

size=`df -h | awk -F " " '{print$(NF-1)}' | sed -n "6p" | cut -d "%" -f1`
if [ $size -gt 85 ]; then
	echo "The disk size is Full"
	echo "Percentage Usage is $size"
fi

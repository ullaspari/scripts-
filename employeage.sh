#!/bin/bash

while read line
do
  age=`echo $line | awk -F " " '{print$3}'`
  if [ $age -gt 29 ]; then
	name=`echo $line | awk -F " " '{print$1}'`
	echo $name
	fi
done < $1


#!/bin/bash

name=$1
if [ -f $name ]; then
echo "$name is a file"
elif [ $? -eq 0 ]; then
cat $name >> temp
mv temp file2.txt
else
echo "$name doesnot exists"
fi

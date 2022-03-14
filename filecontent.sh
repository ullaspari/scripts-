#!/bin/bash

name=$1
if [ -f $name ]; 
then 
echo "$namne is a file"
fi

while read line 
do
echo $line | wc -l
done < $1

else
if [ -d $name ];
then
echo "$name is a directory"
fi

while read line 
do
echo $ line | ls 
done < $1

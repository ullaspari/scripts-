#!/bin/bash

echo "Enter the name to check"
read name

if [ -f $name ]; then
    echo "$name is a file"
     cat $name
     wc -l $name
elif [ -d $name ]; then
     echo "$name is a directory"
     cd $name
     ls
else
    echo "$name does not exist"
exit 1
fi

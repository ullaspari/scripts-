#!/bin/bash

grep -l -r "<string>" * 
sum=$1
if [ $? -ge 1 ]; then
echo "the pattern $1"
else 
echo "pattern not found"
fi

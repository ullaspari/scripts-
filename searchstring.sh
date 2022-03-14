#!/bin/bash

grep -l -R "linux"

if [ $? -ne 0 ]; then
echo "pattern is found"
fi




#!/bin/bash

# Define the filename
filename='ts.txt'
if [ -f /ts.txt ]
then
     echo "File not empty"
else
     echo "File empty"
fi
# Type the text that you want to append
read -p "Enter the text that you want to append:" newtext

# Check the new text is empty or not
if [ "$newtext" != "" ]; then
      # Append the text by using '>>' symbol
      printf "Appended text is: %s\n" "$newtext" >> $filename
fi

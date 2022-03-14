#!/bin/bash

set -x

sum=`expr $1 + $2`
sub=`expr $1 - $2`

echo "Sum of Two Numbers i $sum"
echo "Difference of Two Numbers is $sub"

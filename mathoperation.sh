#!/bin/bash

sum=`expr $1 + $2`
sub=`expr $1 - $2`
multiply=`expr $1 \* $2`
divide=`expr $1 % $2`

echo "Sum of Two Numbers is $sum"
echo "Difference of Two Numbers is $sub"
echo "multiplication of two numbers is $multiply"
echo "division of two numbers is $divide"

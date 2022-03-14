#!/bin/bash

NUM=$1
NUM=$2
SUM=`expr $1 + $2`
MUL=`expr $1 \* $2`
if [ $1 -gt $2 ];
then
SUB=`expr $1 - $2`
DIV=`expr $1 / $2`

else
SUB=`expr $2 - $1`
DIV=`expr $2 / $1`

fi

echo " ADDITION OF $1 & $2 IS $SUM "
echo " MULTIPLICATION OF $1 & $2 IS $MUL "
echo " SUBSTRACTION OF $1 & $2 IS $SUB "
echo " DIVISION OF $1 & $2 IS $DIV "

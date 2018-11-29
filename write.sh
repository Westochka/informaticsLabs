#!/bin/bash 
a=0
while [ "$a" -lt "$1" ]
do
  a=`expr $a + 1`
  echo "Hello"
done

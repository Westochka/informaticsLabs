#!/bin/bash 
let a=0
while [ "$a" -lt "$1" ]
do
  let a=$a+1
  echo "Hello"
done

#!/bin/bash 
add="add"
sub="sub"
mul="mul"
if [ $3 = $add ]; then
let a=$1+$2
fi

if [ $3 = $sub ]; then
let a=$1-$2
fi

if [ $3 = $mul ]; then
let a=$1*$2
fi
echo $a

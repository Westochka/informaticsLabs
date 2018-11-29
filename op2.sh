#!/bin/bash 
a=$3
if [ -z "$3" ]; then
a=$ARITHMETIC_OP
fi
add="add"
sub="sub"
mul="mul"
if [ $a = $add ]; then
let k=$1+$2
fi
if [ $a = $sub ]; then
let k=$1-$2
fi
if [ $a = $mul ]; then
let k=$1*$2
fi
echo "$k"

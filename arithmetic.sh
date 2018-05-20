#!/bin/bash

echo 'let a=5+4'
let a=5+4
echo $a

echo 'let "a = 5 + 4"'
let "a = 5 + 4"
echo $a

echo 'let a++'
let a++
echo $a

echo 'let "a=4*5"'
let "a=4*5"
echo $a

echo 'let "a = $1 + 30"'
let "a = $1 + 30"
echo $a

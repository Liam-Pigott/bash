#!/bin/bash


echo 'expr 5 + 4'
expr 5 + 4

echo 'expr "5 + 4"'
expr "5 + 4"

echo 'expr 5+4'
expr 5+4

echo 'expr 5 \* $1'
expr 5 \* $1

echo 'expr 11 % 2'
expr 11 % 2

echo 'a=$(expr 10 - 3)'
a=$(expr 10 - 3)
echo $a

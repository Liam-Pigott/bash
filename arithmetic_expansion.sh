#!/bin/bash

a=$(( 4 + 5))
echo $a

a=$((3+5))

b=$(( a + 3))
echo $b

b=$(( $a + 4 ))
echo $b

(( b++ ))
echo $b

(( b+= 3 ))
echo $b

a=$(( 4 * 5 ))
echo $a

#length of variable
a='Hello World'
echo ${#a}

b=674378923
echo ${#b}

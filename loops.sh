#!/bin/bash

echo While loop:
counter=1
while [ $counter -le 10 ]
do
    echo $counter
    ((counter++))
done

echo All done
echo

echo Until loop:
counter=1
until [ $counter -gt 10 ]
do
    echo $counter
    ((counter++))
done

echo All done

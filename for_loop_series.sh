#!/bin/bash

for value in {1..5}
do
    echo $value
done

echo looping range in steps of 3

for value in {12..0..3}
do
    echo $value
done


#!/bin/bash

if [ $1 -ge 18 ]
then
    echo You are older than 18
elif [ $1 -lt 10 ]
then
    echo You are younger than 10
else
    echo You\'re younger than 18 but older than 10
fi

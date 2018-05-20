#!/bin/bash

#make a backup set of files unless disk space is below certain level
for value in $1/*
do
    used=$( df $1 | tail -1 | awk '{print $5}' | sed 's/%//' )
    if [ $used -gt 90 ]
    then
        echo Low disk space 1>&2
        break
    fi
    cp $value $1/backup/
done

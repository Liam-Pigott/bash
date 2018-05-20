#!/bin/bash

#or example
if [ $USER == 'bob' ] || [ $USER == 'liam' ]
then
    ls -alh
else
    ls
fi

#and example
if [ -r $1 ] && [ -s $1 ]
then
    echo This file is readable and has size gt 0
fi

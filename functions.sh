#!/bin/bash

print_something(){
    echo print inside a function
}

print_something

print_with_arg(){
    echo Hello $1
}

print_with_arg Liam


print_and_return(){
    echo Hello $1
    return 5
}

print_and_return Liam
echo the previous function has a return value of $?


echo
echo Return hack:

lines_in_file(){
    cat $1 | wc -l
}

num_lines=$( lines_in_file $1 )

echo The file $1 has $num_lines lines in it.

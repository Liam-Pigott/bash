#!/bin/bash


#commands can be stored in variables with $(...)

var=$(ls /etc | wc -l)

echo There are $var entries in the directory /etc

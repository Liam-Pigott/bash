#!/bin/bash

echo Here is a summary of the sales data:
echo ====================================
echo

cat /dev/stdin | cut -d' ' -f 2,3 | sort 

#invoke with something like 'cat salesdata.txt | ./sales_summary

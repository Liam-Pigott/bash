#!/bin/bash

if [ $1 -gt 100 ]
then
	echo "Number is greater than 100"
	pwd
fi

date

cat > operators.txt <<_EOF_
Operator	Description 
! EXPRESSION	The EXPRESSION is false. 
-n STRING	The length of STRING is greater than zero. 
-z STRING	The lengh of STRING is zero (ie it is empty). 
STRING1 = STRING2	STRING1 is equal to STRING2 
STRING1 != STRING2	STRING1 is not equal to STRING2 
INTEGER1 -eq INTEGER2	INTEGER1 is numerically equal to INTEGER2 
INTEGER1 -gt INTEGER2	INTEGER1 is numerically greater than INTEGER2 
INTEGER1 -lt INTEGER2	INTEGER1 is numerically less than INTEGER2 
-d FILE	FILE exists and is a directory. 
-e FILE	FILE exists. 
-r FILE	FILE exists and the read permission is granted. 
-s FILE	FILE exists and it's size is greater than zero (ie. it is not empty). 
-w FILE	FILE exists and the write permission is granted. 
-x FILE	FILE exists and the execute permission is granted. 
_EOF_

cat operators.txt

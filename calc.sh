#! /bin/bash
# Student Name: Luke Paddock
#	    ID: 10157251
#	NET ID: 14lp9

TRUE=1
FALSE=0

result=0

RUNNING=$TRUE
while (($RUNNING == $TRUE)); do 

	echo -n 'Please insert a number: ' 
	read numOne #Store first number in variable numOne

	echo -n 'Please insert an operation: '
	read opOne #Store operation into variable opOne

	echo $numOne $opOne
	RUNNING=$FALSE
done



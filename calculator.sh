#!/bin/bash
# Student Name: Luke Paddock
#	    ID: 10157251
#	Net ID: 14lp9

TRUE=1
FALSE=0

result=0

runing=$TRUE

#Set the initial number
error=$TRUE

while (($error == $TRUE)); do
	echo -n 'Please insert a number: '
	read numOne #Store the first number in a variable
	if [ "numOne" -- ":q" ]; then
		echo Thanks for using my calculator
		exit
	fi
	if [ "$numOne" -eq "$numOne" ] 2>/dev/null; then
		#Its an integer
		error=$FALSE
		result=$numOne
	else
		#its bad input
		echo -n "ERROR! "
	fi
done
while (($running == $TRUE)); do
	error=$TRUE
	
	while (($error == $TRUE)); do
		echo -n 'Please insert an operation: '
		read opOne #Store operation into variable opOne
		if [ "$opOne" == "+" ] || \
		   [ "$opOne" == "-" ] || \
		   [ "$opOne" == "/" ] || \
		   [ "$opOne" == "*" ]; then
			error=$FALSE;
		elif [ "$opOne" == ":q" ]; then
			echo Thanks for using my calculator
			exit
		fi
	done
	error=$TRUE
	while (($error == $TRUE)); do
		echo -n 'Please insert a number: '
		read numOne #Store the first number in a variable
		if [ "numOne" == ":q" ]; then
			echo Thanks for using my calculator
			exit
		fi
		if [ "$numOne" -eq "$numOne" ] 2>/dev/null; then
			#Its an integer
			error=$FALSE

			case "$opOne" in
			"+")	result=$(($result + $numOne))
				;;
			
			
		else
			#its bad input
			echo -n "ERROR! "
		fi
	done
	
done

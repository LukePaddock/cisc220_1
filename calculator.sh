#!/bin/bash
# Student Name: Luke Paddock
#	    ID: 10157251
#	Net ID: 14lp9

TRUE=1	#Use integers for true / false for simplicity
FALSE=0

result=0

running=$TRUE


error=$TRUE
#Set the first number
while (($error == $TRUE)); do	#Will loop until input is correct
	echo -n 'Please insert a number: '
	read numOne #Store the first number in a variable
	if [ "$numOne" == ":q" ]; then	#user wants to quit so quit
		echo Thanks for using my calculator
		exit
	fi
	if [ "$numOne" -eq "$numOne" ] 2>/dev/null; then
		#User input is correct!
		error=$FALSE	# stop the loop!	
		result=$numOne	 
	else
		#its bad input
		echo -n "ERROR! "
	fi
done
while (($running == $TRUE)); do #Main program loop
	error=$TRUE 
	
	while (($error == $TRUE)); do #Will loop until input is correct
		echo -n 'Please insert an operation: '
		read opOne #Store operation into variable opOne
		if [ "$opOne" == "+" ] || \
		   [ "$opOne" == "-" ] || \
		   [ "$opOne" == "/" ] || \
		   [ "$opOne" == "*" ]; then #if user input correct
			error=$FALSE; #Stop the loop!
		elif [ "$opOne" == ":q" ]; then #if he wants to quit
			echo Thanks for using my calculator
			exit #just quit the program
		else
			echo -n "Error! "
			#User must try again. :/
		fi
	done
	error=$TRUE
	while (($error == $TRUE)); do #Will loop until input is correct
		echo -n 'Please insert a number: '
		read numOne #Store the first number in a variable
		if [ "$numOne" == ":q" ]; then #user want to quit
			echo Thanks for using my calculator
			exit	#quit the program
		fi
		if [ "$numOne" -eq "$numOne" ] 2>/dev/null; then #input is correct
			#Its an integer
			error=$FALSE

			case "$opOne" in
			"+")	result=$(($result + $numOne))
				;;
			"-")	result=$(($result - $numOne))
				;;
			"/")	result=$(($result / $numOne))
				;;
			"*")	result=$(($result * $numOne))
				;;
			*)	#This should never happen because we check for correct
				#character eariler (when user inputs the operation)
				echo bad_error
				;;
			esac
			echo "Result so far is: $result"	#print current result	
			
		else
			#its bad input
			echo -n "ERROR! "
		fi
	done
	
done

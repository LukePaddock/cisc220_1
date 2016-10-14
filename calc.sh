#! /bin/bash
# Student Name: Luke Paddock
#	    ID: 10157251
#	NET ID: 14lp9

TRUE=1
FALSE=0

result=0

running=$TRUE
while (($running == $TRUE)); do #Run the program until the variable $running is changed

	error=$TRUE # Ask for a number until the user gives one
	while (($error == $TRUE)); do
		echo -n 'Please insert a number: ' 
		read numOne #Store first number in variable numOne
		if [ "$numOne" == ":q" ]; then
			echo Thanks for using my calculator
			exit 
		fi
		if [ "$numOne" -eq "$numOne"  ] 2>/dev/null; then
			#Its an integer
			error=$FALSE
		else
			#Its not an integer
			echo -n "ERROR! "
		fi
	done
	error=$TRUE

	while (($error == $TRUE)); do
		echo -n 'Please insert an operation: '
		read opOne #Store operation into variable opOne

		case "$opOne" in
		
		"+") result=$(($result + $numOne))
		     error=$FALSE
		     ;;
		"-") result=$(($result - $numOne))
		     error=$FALSE
		     ;;
		"*") result=$(($result * $numOne))
		     error=$FALSE
		     ;;
		"/") result=$(($result / $numOne))
		     error=$FALSE
	 	     ;;
	       ":q") error=$FALSE
		     echo "Thanks for using my calculator"
		     exit
		     ;;
		*  ) echo -n "ERROR! "
		     ;;
		esac
	done
	echo "Result so far is: $result"
done



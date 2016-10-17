#!/bin/bash
# Student Name: Luke Paddock
#	    ID: 10157251
#	Net ID: 14lp9

#lane[123] store the current position on the 'track'
lane1=0
lane2=0
lane3=0
length=40 #The length of the 'track'

TRUE=1
FALSE=0

racing=$TRUE

function drawTrack {
	#Draw the 'header' information
	clear	
	echo "Welcome to CISC220 Racing Arena"
	echo
	echo "User 1 press 1 to move forward, user 2 press 2 and user 3 press 3"
	echo
	
	#Draw the 'lane1' racer
	for i in `seq 0 $lane1`; do
		if [[ $i -ne 0 ]]; then
			echo -n "~"
		fi
	done
	echo -n "|->"
	for x in `seq $lane1 $(($length-1))`; do
		echo -n " "
	done
	echo -n "# Lane 1 #"
	
	echo
	echo
	#END 'lane1' racer

	#Draw the 'lane2' racer	
	for i in `seq 0 $lane2`; do
		if [[ $i -ne 0 ]]; then
			echo -n "~"
		fi
	done
	echo -n "|->"
	for x in `seq $lane2 $(($length-1))`; do
		echo -n " "
	done
	echo -n "# Lane 2 #"
	
	echo
	echo
	#END 'lane2' racer

	#Draw the 'lane3' racer
	for i in `seq 0 $lane3`; do
		if [[ $i -ne 0 ]]; then
			echo -n "~"
		fi
	done
	echo -n "|->"
	for x in `seq $lane3 $(($length-1))`; do
		echo -n " "
	done
	echo -n "# Lane 3 #"
	#END 'lane3' racer

}

while (($racing == $TRUE)); do
	drawTrack
	read -n 1 racer
	case "$racer" in
	
		"1")	lane1=$(($lane1 + 1))
			;;
		"2")	lane2=$(($lane2 + 1))
			;;
		"3")	lane3=$(($lane3 + 1))
			;;
		*  )	#Error input just do nothing
			;;
	esac

	if [[ $lane1 -gt $(($length - 1)) ]]; then
		drawTrack
		echo
		echo "Player 1 WINS!"	
		racing=$FALSE
		exit
	fi

	if [[ $lane2 -gt $(($length - 1)) ]]; then
		drawTrack
		echo
		echo "Player 2 WINS!"	
		racing=$FALSE
		exit
	fi

	if [[ $lane3 -gt $(($length - 1)) ]]; then
		drawTrack
		echo
		echo "Player 3 WINS!"	
		racing=$FALSE
		exit
	fi
done


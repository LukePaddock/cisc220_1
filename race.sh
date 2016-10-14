#!/bin/bash
# Student Name: Luke Paddock
#	    ID: 10157251
#	Net ID: 14lp9

lane1=0
lane2=0
lane3=0
length=50 #The length of the 'track'

TRUE=1
FALSE=0

racing=$TRUE

function drawTrack {
	clear	
	echo "Welcome to CISC220 Racing Arena"
	echo
	echo "User 1 press 1 to move forward, user 2 press 2 and user 3 press 3"
	echo
	for i in `seq 0 $lane1`; do
		if [[ $i -ne 0 ]]; then
			echo -n "~"
		fi
	done
	echo -n "|->"
	for x in `seq $lane1 $(($length-3))`; do
		echo -n " "
	done
	echo -n "# Lane 1 #"

	for i in `seq 0 $lane1`; do
		if [[ $i -ne 0 ]]; then
			echo -n "~"
		fi
	done
	echo -n "|->"
	for x in `seq $lane1 $(($length-3))`; do
		echo -n " "
	done
	echo -n "# Lane 1 #"

	for i in `seq 0 $lane1`; do
		if [[ $i -ne 0 ]]; then
			echo -n "~"
		fi
	done
	echo -n "|->"
	for x in `seq $lane1 $(($length-3))`; do
		echo -n " "
	done
	echo -n "# Lane 1 #"
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
	

done


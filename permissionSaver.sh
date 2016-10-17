#!/bin/bash
# Student Name: Luke Paddock
#    	    ID: 10157251
#	Net ID: 14lp9

list=`ls -l | cut -d" " -f1,3 | sed 1d`
num=$((`ls -l | grep 'permissionSaver' | wc -l` + 1))
filename=$(("permissionSaver" + $num))
echo $filename
#for perm in 

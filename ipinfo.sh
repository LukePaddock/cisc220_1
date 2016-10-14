#!/bin/bash
#
# Student Name: Luke Paddock
#           ID: 10157251
#       Net ID: 14lp9
#

ipAddrs=$(ifconfig | grep 'inet addr' | cut --only-delimited --delimiter=" " --fields=12 | sed s/'addr:'//)

for ips in $ipAddrs; do
	suf=$(echo $ips | cut --only-delimited --delimiter="." --fields=1)
	if [[ $suf == "192" ]]; then
		echo $ips " Private IP"
	elif [[ $suf == "10" ]]; then
		echo $ips " Private IP"
	elif [[ $suf == "127" ]]; then
		echo $ips " Local IP"
	else 
		echo $ips " Public IP"
	fi
done

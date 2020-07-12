#!/bin/bash   

function get_factor(){
	#given a number and factor, adds factor to array till it divides number
	local present_number=$1
	local present_factor=$2
	while [ $present_factor -le $present_number ]
 	do
		if [ $((present_number%present_factor)) -eq 0 ]
		then
			echo "$present_factor"
			present_number=$((present_number/present_factor))
		else
			break
		fi
	done
	number=$present_number
}

read -p "Enter number: " number

for ((i=2; i<=$number; i++))
do
	get_factor $number $i
done


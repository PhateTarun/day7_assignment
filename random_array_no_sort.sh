#!/bin/bash 
function find_2nd_largest_smallest(){   # function to get 2nd largest and 2nd smallest
	random_array=("$@")
	echo "${random_array[@]}"
	max=0
	prev_max=0
	min=0
	prev_min=0
	for ((i=0; i<10; i++))
	do
		number="${random_array[i]}"
		if [ $i -eq 0 ]
		then
			max=$number
			min=$number
			prev_min=$number
			prev_max=$number
		elif [ $number -gt $max ]
		then
			prev_max=$max
			max=$number
		elif [ $number -lt $min ]
		then
			prev_min=$min
			min=$number
		fi
	done
	echo "$prev_min is 2nd minimum and $prev_max is 2nd largest"
}

random_array=()   # creating an array
for ((i=0; i<10; i++))
do
	random_array[$i]=$((RANDOM%900+100))
done

find_2nd_largest_smallest ${random_array[@]}

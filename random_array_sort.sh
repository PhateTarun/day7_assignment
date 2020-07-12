#!/bin/bash

function sort_(){
	#function to return the sorted array
	local number_array=("$@")
	for (( i=0; i<10; i++))
	do
		min=${number_array[i]}          # considering each element to be min
		for ((j=$((i+1)); j<10; j++))
		do
			current_number=${number_array[j]}
			if [ $current_number -lt $min ]
			then
			        number_array[$j]=$min              #swaping the element if current element < mib
				min=$current_number
			fi
		done
		number_array[$i]=$min
	done
	sorted_array=(${number_array[@]})
}

random_array=()
sorted_array=()
for ((i=0; i<10; i++))
do
	random_array[$i]=$((RANDOM%900+100))
done

sort_ ${random_array[@]} 
echo "generated array: ${random_array[@]}"
echo "sorted array: ${sorted_array[@]}"
echo "2nd smallest number is ${sorted_array[1]}"
echo "2nd largest number is ${sorted_array[8]}"




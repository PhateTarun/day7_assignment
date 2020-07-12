#!/bin/bash -x

function create_array(){
	read -p "Enter the number of elements: " number_of_element
	for ((i=0;i<$number_of_element; i++))
	do
		read -p "Enter number $i: " n
		number_array[$i]=$n
	done
	return_value=(${number_array[@]})
}
#variables
number_array=()
sumzero_array=()
array_counter=0

create_array

for ((i=0; i<${#number_array[@]}; i++))
do 
	for ((j=$((i+1)); j<${#number_array[@]}; j++))
	do 
		for ((k=$((j+1)); k<${#number_array[@]}; k++ ))
		do 
			if [ $((number_1 + number_2 + number_3)) -eq 0 ]
			then
				sumzero_array[((array_counter++))]=${number_array[i]}
				sumzero_array[((array_counter++))]=${number_array[j]}
				sumzero_array[((array_counter++))]=${number_array[k]}
			fi
		done
	done
done

for ((i=0; i<${#sumzero_array[@]}; i=$((i+3))))
do
	echo "${sumzero_array[@]:$i:3} sum of these numbers are zero"
done

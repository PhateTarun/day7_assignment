#!/bin/bash  

function check_number_repeate(){
	local number=$1
	local digit1=-1
	local digit2=101
	if [ ! $number -eq 0 ]
	then
		digit1=$((number%10))
		number=$((number/10))
		digit2=$((number%10))
	fi
	if [ $digit1 -eq $digit2 ]
	then
		echo "1"
		return 
	fi
	echo "0"
	return 
}

repeate_number_array=()
array_counter=0
for ((i=0; i<=100; i++))
do
	isrepeate="$( check_number_repeate $i )"
	if [ $isrepeate -eq 1 ]
	then
		repeate_number_array[((array_counter++))]=$i

	fi
done
echo "Repeting digits numbers are: ${repeate_number_array[@]}"

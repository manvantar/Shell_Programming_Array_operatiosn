#!/bin/bash -x 

array[0]=0
for ((  i = 0 ; i < 10; i++ ))
do
array[$i]=$((RANDOM%1000))
done

size=${#array[@]}
for ((  i = 0 ; i < 10; i++ ))
do

for (( j = i+1 ; j < 10; j++ ))
do
	if [[ ${array[i]} -lt ${array[j]} ]]
         	then
			temp=${array[$j]}
			array[$j]=${array[$i]}
			array[$i]=$temp
       fi

	done
done

echo "${array[@]}"





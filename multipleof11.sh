#!/bin/bash -x
index=0
array[0]=0
for ((  i = 1 ; i < 100; i++ ))

do
	if [ $(($i%11)) -eq 0 ]
	then
	array[((index++))]=$i
	fi
done
echo "${array[@]}"




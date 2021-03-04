#!/bin/bash -x
prime_factor[0]=0
read -p "Enter the number: " number
num=0
k=0
for (( i=2; i<=$(($number/2)) ; i++ ))
do 

	if [ $(($number%$i)) -eq 0 ]
	then	
	prime_flag=0		
		for (( j=2, prime_flag=0 ; j <= $((i/2)) ; j++ ))
			do
			if [ $(($i%$j)) -eq 0 ]
			then
				prime_flag=1
			fi
			done
		if [ $prime_flag -eq 0 ]
		then		
		prime_factor[k]=$i
		((k=k+1))
		fi

	fi
	
done
echo ${prime_factor[@]}
		

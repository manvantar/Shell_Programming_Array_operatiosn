#!/bin/bash -x 

array[0]=0
for ((  i = 0 ; i < 10; i++ ))
do
array[$i]=$((RANDOM%1000))
done
echo "${array[@]}"

firstBig=0
secondBig=0
firstSmall=0
secondSmall=0

if [ ${array[0]} -ge ${array[1]} ]
	then
	firstBig=${array[0]}
	secondBig=${array[1]}
	firstSmall=${array[1]}
	secondSmall=${array[0]}
else 
 
	firstBig=${array[1]}
	secondBig=${array[0]}
	firstSmall=${array[0]}
	secondSmall=${array[1]}
fi

for (( i = 2 ; i < 10; i++ ))
do
	if [ ${array[$i]} -ge  $firstBig ]
        	then
		secondBig=$firstBig
        	firstBig=${array[$i]}
	elif [ ${array[$i]} -ge $secondBig ]
		then
	        secondBig=${array[$i]}
	fi

done

echo "$secondBig"

for (( i = 2 ; i < 10; i++ ))
do
        if [ ${array[$i]} -le  $firstSmall ]
                then
                secondSmall=$firstSmall
                firstSmall=${array[$i]}
        elif [ ${array[$i]} -le $secondSmall ]
                then
                secondSmall=${array[$i]}
        fi

done

echo "$secondSmall"





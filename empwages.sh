#!/bin/bash 

P=1
wage=$((20*8))
hr=0
d=0
dT=0
total=0
while [ $hr -lt 100 ] && [ $d -lt 20 ]
do
    r=$((RANDOM%2))

	if [ $r -eq 1 ]
	then
		hr=$(($hr+8))
		d=$(($d+1))
		total=$(($total+$wage))
	fi
	dT=$(($dT+1))
done


echo "the daily wage is $wage"
echo "total number of days it took to compleat the work is $dT"
echo "total wage is $total"
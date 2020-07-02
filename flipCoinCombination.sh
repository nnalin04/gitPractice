#!/bin/bash 

echo "Number of times you want to flip coins"
read n

f1=0
f2=0
f3=0
cH=0
cT=0

while [ $f1 -lt $n ]
do     
    r1=$((RANDOM%2))
    if [ $r1 -eq 0 ]
    then 
        cH=$(($cH+1))
    fi
    if [ $r1 -eq 1 ]
    then
        cT=$(($cT+1))
    fi    
    f1=$(($f1+1))
done

avgH=$((100*$cH/$n))
avgT=$((100*$cT/$n))

echo "the average of H in n toss $avgH%"
echo "the average of T in n toss $avgT%"
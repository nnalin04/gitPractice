#!/bin/bash 

echo "Number of times you want to flip coins"
read n

f1=0
f2=0
f3=0
cHH=0
cHT=0
cTH=0
cTT=0

while [ $f2 -lt $n ]
do  
    r1=$((RANDOM%4))
    if [ $r1 -eq 0 ]
    then 
        cHH=$(($cHH+1))
    fi
    if [ $r1 -eq 1 ]
    then 
        cHT=$(($cHT+1))
    fi
    if [ $r1 -eq 2 ]
    then 
        cTH=$(($cTH+1))
    fi
    if [ $r1 -eq 3 ]
    then
        cTT=$(($cTT+1))
    fi    
    f2=$(($f2+1))
done

avgHH=$((100*$cHH/$n))
avgHT=$((100*$cHT/$n))
avgTH=$((100*$cTH/$n))
avgTT=$((100*$cTT/$n))

echo "the average of HH in n toss $avgHH%"
echo "the average of HT in n toss $avgHT%"
echo "the average of TH in n toss $avgTH%"
echo "the average of TT in n toss $avgTT%"
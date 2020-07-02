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

cHHH=0
cHHT=0
cHTH=0
cHTT=0
cTHH=0
cTHT=0
cTTH=0
cTTT=0

while [ $f3 -lt $n ]
do  
    r1=$((RANDOM%8))
    if [ $r1 -eq 0 ]
    then 
        cHHH=$(($cHHH+1))
    fi
    if [ $r1 -eq 1 ]
    then 
        cHHT=$(($cHHT+1))
    fi
    if [ $r1 -eq 2 ]
    then 
        cHTH=$(($cHTH+1))
    fi
    if [ $r1 -eq 3 ]
    then
        cHTT=$(($cHTT+1))
    fi
    if [ $r1 -eq 4 ]
    then 
        cTHH=$(($cTHH+1))
    fi
    if [ $r1 -eq 5 ]
    then 
        cTHT=$(($cTHT+1))
    fi
    if [ $r1 -eq 6 ]
    then 
        cTTH=$(($cTTH+1))
    fi
    if [ $r1 -eq 7 ]
    then
        cTTT=$(($cTTT+1))
    fi    
    f3=$(($f3+1))
done

avgHHH=$((100*$cHHH/$n))
avgHHT=$((100*$cHHT/$n))
avgHTH=$((100*$cHTH/$n))
avgHTT=$((100*$cHTT/$n))
avgTHH=$((100*$cTHH/$n))
avgTHT=$((100*$cTHT/$n))
avgTTH=$((100*$cTTH/$n))
avgTTT=$((100*$cTTT/$n))

echo "the average of HHH in n toss $avgHHH%"
echo "the average of HHT in n toss $avgHHT%"
echo "the average of HTH in n toss $avgHTH%"
echo "the average of HTT in n toss $avgHTT%"
echo "the average of THH in n toss $avgTHH%"
echo "the average of THT in n toss $avgTHT%"
echo "the average of TTH in n toss $avgTTH%"
echo "the average of TTT in n toss $avgTTT%"
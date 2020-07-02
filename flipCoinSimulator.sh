#!/bin/bash 

countT=0
countH=0
count=0

r=$((RANDOM%2))
    
    if [ $r -eq 0 ]
    then 
        echo "head"
    fi
    if [ $r -eq 1 ]
    then
        echo "Tail"
    fi    

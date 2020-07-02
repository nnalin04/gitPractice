#!/bin/bash 
     
    r1=$((RANDOM%2))
    if [ $r1 -eq 0 ]
    then 
        echo "Heads"
    fi
    if [ $r1 -eq 1 ]
    then
        echo "Tails"
    fi    
   

#!/bin/bash 

countT=0
countH=0
count=0

while [ $countH != 21 -a $countT != 21 ]
do
    r=$((RANDOM%2))
    count=$(($count+1))
    if [ $r -eq 0 ]
    then 
        countH=$(($countH+1))
    fi
    if [ $r -eq 1 ]
    then
        countT=$(($countT+1))
    fi    
done

echo "Heads $countH"
echo "Tails $countT"

if [ $countH -gt $countT ]
then
    dif=$(($countH-$countT))
    echo "Heads came $dif times more the Tails"
elif [ $countT -gt $countH ]
then
    dif=$(($countT-$countH))
    echo "Tails came $dif times more the Heads"
fi

if [ $countH -eq $countT ]
then
    while [ dif -gt 2 ]
    do
        r=$((RANDOM%2))
        count=$(($count+1))
        if [ $r -eq 0 ]
        then 
            countH=$(($countH+1))
        fi
        if [ $r -eq 1 ]
        then
            countT=$(($countT+1))
        fi

        if [ $countH -gt $countT ]
        then
            dif=$(($countH-$countT))
        elif [ $countT -gt $countH ]
        then
            dif=$(($countT-$countH))
        fi
    done
    if [ $countH -gt $countT ]
    then
        dif=$(($countH-$countT))
        echo "Heads came $dif times more the Tails"
    elif [ $countT -gt $countH ]
    then
        dif=$(($countT-$countH))
        echo "Tails came $dif times more the Heads"
    fi
fi


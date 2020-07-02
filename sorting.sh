#!/bin/bash

declare -A sorting
declare -a arr


read -p "enter number : " a
read -p "enter number : " b
read -p "enter number : " c

w=`echo $a $b $c | awk '{print $1+$2*$3}'`

x=`echo $a $b $c | awk '{print $1%$2+$3}'`

y=`echo $a $b $c | awk '{print $3+$1/$2}'`

z=`echo $a $b $c | awk '{print $1*$2+$3}'`

sorting[c1]=$w
sorting[c2]=$x
sorting[c3]=$y
sorting[c4]=$z
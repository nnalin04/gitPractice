#!/bin/bash 

read -p "enter number : " a
read -p "enter number : " b
read -p "enter number : " c

w=`echo $a $b $c | awk '{print $1+$2*$3}'`

x=`echo $a $b $c | awk '{print $1%$2+$3}'`

y=`echo $a $b $c | awk '{print $3+$1/$2}'`

z=`echo $a $b $c | awk '{print $1*$2+$3}'`
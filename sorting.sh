#!/bin/bash 

read -p "enter number : " a
read -p "enter number : " b
read -p "enter number : " c

w=`echo $a $b $c | awk '{print $1+$2*$3}'`
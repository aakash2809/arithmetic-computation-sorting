#!/bin/bash 
echo "                   Arithmetic Compution And Sorting"
echo "--------------------------------------------------------------------"
#TO TAKING INPUT FROM USER
read -p "Enter first input :" firstInput
read -p "Enter second input:" secondInput
read -p "Enter third input :" thirdInput
#COMPUTE ARITHMETIC OPERATION
result=`echo $firstInput $secondInput $thirdInput |awk '{printf($1 + $2 * $3)}'`
echo "Result:" $result

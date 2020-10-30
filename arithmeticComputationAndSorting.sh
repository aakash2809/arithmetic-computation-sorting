#!/bin/bash 
echo "                   Arithmetic Compution And Sorting"
echo "--------------------------------------------------------------------"
#TO TAKING INPUT FROM USER
read -p "Enter first input :" firstInput
read -p "Enter second input:" secondInput
read -p "Enter third input :" thirdInput
#COMPUTE ARITHMETIC OPERATION
result1=`echo $firstInput $secondInput $thirdInput |awk '{printf($1 + $2 * $3)}'`
echo "Result1: firstInput + secondInput * thirdInput = " $result1
result2=`echo $firstInput $secondInput $thirdInput |awk '{printf($1 * $2 + $3)}'`
echo "Result2: firstInput * secondInput + thirdInput = " $result2


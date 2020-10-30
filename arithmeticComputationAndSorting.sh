#!/bin/bash -x

#TO DECLEAR THE DICTIONARY
declare -A arithmeticOperation

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
result3=`echo $firstInput $secondInput $thirdInput |awk '{printf($1 / $2 + $3)}'`
echo "Result3: firstInput / secondInput + thirdInput = " $result3
result4=`echo $firstInput $secondInput $thirdInput |awk '{printf($1 % $2 + $3)}'`
echo "Result4: firstInput % secondInput + thirdInput = " $result4

#TO STORE THE DICTIONARY
arithmeticOperation[((result1))]=$result1
arithmeticOperation[((result2))]=$result2
arithmeticOperation[((result3))]=$result3
arithmeticOperation[((result4))]=$result4

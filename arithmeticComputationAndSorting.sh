#!/bin/bash 

#TO DECLEAR THE DICTIONARY
declare -A arithmeticOperation

#TO DECLEAR THE ARRAY
declare -a array

echo "                   Arithmetic Compution And Sorting"
echo "--------------------------------------------------------------------"

#TO TAKING INPUT FROM USER
read -p "Enter first input :" firstInput
read -p "Enter second input:" secondInput
read -p "Enter third input :" thirdInput

#TOCOMPUTE ARITHMETIC OPERATION
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

#TO READ RESULTS FROM DICTIONARY AND STORE THEM IN ARRAY
for ((index=0; index<=${#arithmeticOperation[@]}; index++))
do
  array[((index))]=${arithmeticOperation[((result$((index+1))))]}
done
echo "computed results are                 :" ${array[@]}

#TO STORE AND PRINT RESULTS IN DECENDING ORDER
resultsDescendingOrder=( $( printf "%s\n" "${array[@]}" | sort -nr ) )
echo "computed result in Descending order  :"  ${resultsDescendingOrder[@]}


#TO STORE AND PRINT RESULTS IN ASCENDING ORDER
resultsAscendingOrder=( $( printf "%s\n" "${array[@]}" | sort -n ) )
echo "computed result in Ascending order   :"  ${resultsAscendingOrder[@]}


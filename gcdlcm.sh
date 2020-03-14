#!/bin/bash

# find greatest common divisor between two numbers using Euclidean formula
echo "What's the first number?"
read firstNum
echo "What's the second number?"
read secondNum

((fixedFirstNum=$firstNum))
((fixedSecondNum=$secondNum))

while [[ "$firstNum" -ne "$secondNum" && "$secondNum" -ne "0" ]]
do
    ((firstNum%=$secondNum))
    
    # use thirdNum as temp variable
    thirdNum=$secondNum
    secondNum=$firstNum
    firstNum=$thirdNum
done
echo "GCD is" $firstNum

# LCM formula
echo "LCM is" $(( (fixedFirstNum*fixedSecondNum) / firstNum ))



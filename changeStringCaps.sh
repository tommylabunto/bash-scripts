#!/bin/bash

#change caps of string
echo "What's the string?"
read string
echo "Change everything to uppercase (0) or lowercase(1)?"
read num

if [[ "$num" -eq "0" ]]; then
    echo ${string^^}
elif [[ "$num" -eq "1" ]]; then 
    echo ${string,,}
fi
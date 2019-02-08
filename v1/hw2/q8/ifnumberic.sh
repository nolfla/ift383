#!/bin/bash
declare -i INPUT=0
        read -p "Enter a number between 0 & 9: " INPUT
if [[ "$INPUT" -gt 9  ]];
then
echo "Invalid Entry"
elif [ "$INPUT" -eq 5 ];
then
echo "Your number is 5";
elif [ "$INPUT" -lt 5 ];
then
echo "Your number is less than 5";
elif [ "$INPUT" -gt 5 ];
then
echo "Your number is greater than 5";
fi

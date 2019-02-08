#!/bin/bash
read -p "Enter a Username: " USERNAME
if who -u | grep -q "^$USERNAME";
then
echo "Yes"
else
echo "No"
fi

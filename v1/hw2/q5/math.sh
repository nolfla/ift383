#!/bin/bash
read -p "Please enter a number:" VALUE1
read -p "Please enter another value:" VALUE2
echo "$VALUE1"
echo "$VALUE2"
echo "$(($VALUE1**$VALUE2))"

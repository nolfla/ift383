#!/bin/bash
read -p "Name: " NAME
read -p "1st: " FIRST
read -p "2nd: " SECOND
read -p "3rd: " THIRD
echo "Name 1st 2nd 3rd Average"
Sum=$(expr "$FIRST"+"$SECOND"+"$THIRD")
echo "$NAME  $FIRST  $SECOND  $THIRD     $((Sum/3))"

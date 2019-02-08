#!/bin/bash
printf "%s\n" $(date)
d=$(date +%b)
b=$(date +%d)
m=$(date +%Y)
a=$(date +%a)
echo "Today is $a, the $b of $d $m"

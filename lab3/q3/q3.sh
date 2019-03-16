#!/bin/sh

echo "Getting results of percentages and percentages as letter grades for students\n"

./q3.awk data.csv > results.txt

cat results.txt

echo "\n"

echo "\nRemoving header from file\n"

sed '1d' results.txt > resultsnohead.txt

cat resultsnohead.txt

cat resultsnohead.txt > resultssort.txt

echo "\n\nSorting results of file without header by name\n"

sort resultssort.txt
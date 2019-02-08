#!/bin/sh

cat receipt.txt

wc -l receipt.txt

grep -e "ASU discount             -2.00" receipt.txt > receiptneg.txt

cat receiptneg.txt

wc -l receiptneg.txt

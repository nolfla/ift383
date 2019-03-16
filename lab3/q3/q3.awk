#!/usr/bin/awk -f

BEGIN{

FS = ","

#header for output

print "Name\tPercent\tLetter"

$num initialized to 0

num=0

}

{

if(num==0){

#increments num if equal to 0
num+=1

}

else{

sum[$1] += $4

tot[$1] += $5

}

}

END{

for(c in sum){

#percentage is calculated through dividing the sum over the total and 
multiplying by 100 to change it into a percent

pct = (sum[c]/tot[c])*100

#formats percent

printf "%s\t%.2f\t",c, pct

#if and else if statements that meet a series of conditions for 
percentages that vary in the range

if(pct>=90 && pct<=100)

print "A";

else if(pct>=80 && pct<90)

print "B";

else if(pct>=70 && pct<80)

print "C";

else if(pct>=60 && pct<70)

print "D";

else

print "E"

}

}
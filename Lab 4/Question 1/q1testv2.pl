#!/usr/bin/perl
use strict;
use warnings;
# open the csv file from the command line
open (my $inFile, '<', $ARGV[0]) or die $!;
# get the header of the file
my $header=<$inFile>;   #First line is read here
# declare and initialize the iterative variable
my $i =0;

# define the hash variable
my %data = ();
# define an array to hold the assignment names
my @testNames;
# loop through each
while (my $line = <$inFile>)
{
    # record separator
    chomp $line;

    # split the line at delimiter ','
    # and set the values into the array called
    # fields
    my @fields = split "," , $line;

    # from the array of fields, get the assignment Name
    # set it to array testNames at index i
    $testNames[$i] = $fields[2];

    # push the values of the respective assignment as list
    # into hash data
    push (@{$data{$testNames[$i]}}, $fields[3]);

    # increment the iterative variable
    $i = $i + 1;
}
close $inFile;
# print the header
printf("%-8s %5s %10s %5s ", "Name", "Low", "High", "Average");
# loop through each key and its respective data
foreach my $key ( sort keys %data )
{
    # get the values at each key(Assignment)
    my @eachListValues = @{ $data{$key}};

    # set the variable low to highest value
    my $low = 999;

    # set the variable high to zero
    my $high = 0;

    # set the total to 0
    my $total = 0;

    # set the average value to 0
    my $average = 0;

    # loop through each value in the array list
    # of each assignment
    foreach my $val (@eachListValues)
    {
        # condition to check whether the $val
        # is less than $low
        # if the condition satisfied, then
        # set the $low with $val
        if($val < $low)
        {
            $low = $val;
        }

        # condition to check whether the $val
        # is greater than $high
        # if the condition satisfied, then
        # set the $high with $val
        if($val > $high)
        {
            $high = $val;
        }

        # total the $val
        $total += $val;
    }

    # get the length of the array of the
    # each assignment list
    my $array_length = @eachListValues;

    # compute the average
    $average = $total / $array_length;

    # display the values
    printf("%-8s %5d %10d %5.2f \n", $key, $low, $high, $average);
}
#!/usr/bin/perl

use strict;
use warnings;

my $file = $ARGV[0] or die "Need to priovide CSV file on the command line ";

my $sum = 0;
open(my $data, '<', $file) or die "Could not open '$file' $! ";

while (my $line = <$data>) # reading line by line till end of file
{
chomp $line;
my @fields = split( /[=,]/ , $line); #spliting the input line with = and , as well
print "$fields[1] ";

}
#!/usr/bin/perl
$filename = $ARGV[0];

open (handler, $filename) || die ("Cannot open the file: $filename!");

my $sum = 0;

while ($line = <handler>)
{
    my @a = split ',', $line;
    foreach my $i (@a)
    {
        $sum = $sum + int($i);
    }
}

print "$sum\n";

close(handler);
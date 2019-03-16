#!/usr/bin/perl
sub addAll {
my $TOTAL=0;
     foreach $item (@_){
$TOTAL += $item;
}
return $TOTAL;
}
print addAll(1, 2, 3, 4, 5) . "\n";
print addAll(5, 10, 0, 1) . "\n";
print addAll(1,1) . "\n";

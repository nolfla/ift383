#!/usr/bin/perl

while (<>)

{
printf(" ", "Name", "Percent", "Letter Grade");

#chomps (deletes) newline at end of each line
chomp;

#splits file contents based upon delimiter of "," and stores it in $_
%fileCnts = split(/,/,$_);

print $fileCnts{};

}
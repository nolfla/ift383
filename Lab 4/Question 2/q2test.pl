#!/usr/bin/perl

while (<>)

{
#printf(" ", "Name", "Percent", "Letter Grade");

#chomps (deletes) newline at end of each line
#chomp;

#splits file contents based upon delimiter of "," and stores it in $_
@fileCnts = split(/,/,$_);

#print @fileCnts[0] . "\n";
#print "\t";

#print @fileCnts[1] . "\n";
#print "\t";

#print @fileCnts[2] . "\n";
#print "\t";

#print @fileCnts[3] . "\n";
#print "\t";

#print @fileCnts[4] . "\n";

#variables
$name = @fileCnts[0];
$category = @fileCnts[1];
$assignment = @fileCnts[2];
$score = @fileCnts[3];
$possiblePts = @fileCnts[4];


if ($name eq "Chelsey" | $category eq "Homework" | $assignment eq "H01" | $assignment eq "H02" | $assignment eq "H03" | $assignment eq "H04" | $assignment eq "H05" | $assignment eq "H06" | $assignment eq "H07" )
{
    print $score;
}
}
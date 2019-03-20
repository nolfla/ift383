#!/usr/bin/perl
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if $running_under_some_shell;
# this emulates #! processing on NIH machines.
# (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
# process any FOO=bar switches


#finds maximum number
$, = ' '; # set output field separator
$\ = "\n"; # set output record separator

$FinalMin = 100;
$SurveyMin = 100;
$H01Min = 100;
$H02Min = 100;
$H03Min = 100;
$H04Min = 100;
$H05Min = 100;
$H06Min = 100;
$H07Min = 100;
$L01Min = 100;
$L02Min = 100;
$L03Min = 100;
$L04Min = 100;
$L05Min = 100;
$L06Min = 100;
$L07Min = 100;
$Q01Min = 100;
$Q02Min = 100;
$Q03Min = 100;
$Q04Min = 100;
$Q05Min = 100;
$Q06Min = 100;
$Q07Min = 100;
$FS = ',';
print "Name\tLow\tHigh\tAvergae";

#whn field 2 iis equal to "Homework", finds max and min for each homework assignment

while (<>) {
    ($1,$2,$3,$4) = split(/[,\n]/, $_, -1);

    ds miniminimum umber

    #calcusates averrage

#minimum vam variables ialized to 100
    ($2 eq 'Homework'); {
if ($3 eq 'H01')
    $H01{$4};
    $H01Max = &findMax($4, $H01Max);
  $H01Min = &findMin($4, $H01Min);
}
if ($3 eq 'H02') {
    $H02{$4};
    $H02Max = &findMax($4, $H02Max);
    $H02Min = &findMin($4, $H02Min);
}
if ($3 eq 'H03') {
    $H03{$4};
    $H03Max = &findMax($4, $H03Max);
    $H03Min = &findMin($4, $H03Min);
}
if ($3 eq 'H04') {
    $H04{$4};
    $H04Max = &findMax($4, $H04Max);
    $H04Min = &findMin($4, $H04Min);
}
if ($3 eq 'H05') {
    $H05{$4};
    $H05Max = &findMax($4, $H05Max);
    $H05Min = &findMin($4, $H05Min);
}
if ($3 eq 'H06') {
   $H06{$4};
    $H06Max = &findMax($4, $H06Max);
    $H06Min = &findMin($4, $H06Min);
}
if ($3 eq 'H07') {
  $H07{$4};
    $H07Max = &findMax($4, $H07Max);
    $H07Min = &findMin($4, $H07Min);
}
    }

    #when field 2 is equal to "Lab", finds max and min for each lab
($2 eq 'Lab');
if ($2 eq 'L01') {
{
    $L01{$4};
    $L01Max = &findMax($4, $L01Max);
    $L01Min = &findMin($4, $L01Min);
if ($2 eq 'L02') {
    $L02{$4};
    $L02Max = &findMax($4, $L02Max);
    $L02Min = &findMin($4, $L02Min);
}
if ($2 eq 'L03') {
    $L03{$4};
    $L03Max = &findMax($4, $L03Max);
    $L03Min = &findMin($4, $L03Min);
}
if ($2 eq 'L04') {
    $L04{$4};
    $L04Max = &findMax($4, $L04Max);
    $L04Min = &findMin($4, $L04Min);
}
if ($2 eq 'L05') {
    $L05{$4};
    $L05Max = &findMax($4, $L05Max);
    $L05Min = &findMin($4, $L05Min);
}
if ($2 eq 'L06') {
    $L06{$4};
    $L06Max = &findMax($4, $L06Max);
    $L06Min = &findMin($4, $L06Min);
}
if ($2 eq 'L07') {
    $L07{$4};
    $L07Max = &findMax($4, $L07Max);
    $L07Min = &findMin($4, $L07Min);
}
    }

    # fieldield 2 is equal to "Quiz", finds max and min for each quiz if

      ($2 eq 'Quiz'); {

if ($3 eq 'Q01') {
    $Q01{$4};
    $Q01Max = &findMax($4, $Q01Max);
    $Q01Min = &findMin($4, $Q01Min);
}
if ($3 eq 'Q02') {
    $Q02{$4};
    $Q02Max = &findMax($4, $Q02Max);
    $Q02Min = &findMin($4, $Q02Min);
}
if ($3 eq 'Q03'){
    $Q03{$4};
    $Q03Max = &findMax($4, $Q03Max);
    $Q03Min = &findMin($4, $Q03Min);
}
if ($3 eq 'Q04') {
    $Q04{$4};
    $Q04Max = &findMax($4, $Q04Max);
    $Q04Min = &findMin($4, $Q04Min);
}
if ($3 eq 'Q05') {
    $Q05{$4};
    $Q05Max = &findMax($4, $Q05Max);
    $Q05Min = &findMin($4, $Q05Min);
}
if ($3 eq 'Q06') {
    $Q06{$4};
    $Q06Max = &findMax($4, $Q06Max);
    $Q06Min = &findMin($4, $Q06Min);
}
if ($3 eq 'Q07') {
    $Q07{$4};
    $Q07Max = &findMax($4, $Q07Max);
    $Q07Min = &findMin($4, $Q07Min);
}
    }


    #whenwhen field 2 is equal to "Final", finds max and min for final
    if ($2 eq 'Final') {
$Final{$4};
$FinalMax = &findMax($4, $FinalMax);
$FinalMin = &findMin($4, $FinalMin);
    }

    # fieldield 2 2 is equal to "Survey", finds max and min for survey
    if ($2 eq 'Survey') {
$Survey{$4};
$SurveyMax = &findMax($4, $SurveyMax);
$SurveyMin = &findMin($4, $SurveyMin);
    }

# calls all all of the average functions used to calulate the averages of the difft homework assignements, lab lab assignments, quizzes, finals, and surveys
}

$H01Ag = &caluulateAvg(*H01);
$H02Avg = &calulateAvg(*H02);
$H03Avg = &calulateAvg(*H03);
$H04Avg = &calulateAvg(*H04);
$H05Avg = &calulateAvg(*H05);
$H06Avg = &calulateAvg(*H05);
$H07Avg = &calulateAvg(*H05);
$L01Avg = &calulateAvg(*L01);
$L02Avg = &calulateAvg(*L02);
$L03Avg = &calulateAvg(*L03);
$L04Avg = &calulateAvg(*L04);
$L05Avg = &calulateAvg(*L05);
$L06Avg = &calulateAvg(*L06);
$L07Avg = &calulateAvg(*L07);
$Q01Avg = &calulateAvg(*Q01);
$Q02Avg = &calulateAvg(*Q02);
$Q03Avg = &calulateAvg(*Q03);
$Q04Avg = &calulateAvg(*Q04);
$Q05Avg = &calulateAvg(*Q05);
$Q06Avg = &calulateAvg(*Q06);
$Q07Avg = &calulateAvg(*Q07);
$FinalAvg = &calulateAvg(*Final);
$SurveyAvg = &calulateAvg(*Survey);
printf "%s\t%d\t%d\t%.2f\t\n", 'H01', $H01Min, $H01Max, $H01Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'H02', $H02Min, $H02Max, $H02Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'H03', $H03Min, $H03Max, $H03Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'H04', $H04Min, $H04Max, $H04Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'H05', $H05Min, $H05Max, $H05Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'H06', $H06Min, $H06Max, $H06Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'H07', $H07Min, $H07Max, $H07Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'L01', $L01Min, $L01Max, $L01Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'L02', $L02Min, $L02Max, $L02Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'L03', $L03Min, $L03Max, $L03Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'L04', $L04Min, $L04Max, $L04Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'L05', $L05Min, $L05Max, $L05Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'L06', $L06Min, $L06Max, $L06Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'L07', $L07Min, $L07Max, $L07Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'Q01', $Q01Min, $Q01Max, $Q01Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'Q02', $Q02Min, $Q02Max, $Q02Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'Q03', $Q03Min, $Q03Max, $Q03Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'Q04', $Q04Min, $Q04Max, $Q04Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'Q05', $Q05Min, $Q05Max, $Q05Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'Q06', $Q06Min, $Q06Max, $Q06Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'Q07', $Q07Min, $Q07Max, $Q07Avg;
printf "%s\t%d\t%d\t%.2f\t\n", 'FINAL', $FinalMin, $FinalMax, $FinalAvg;
printf "%s\t%d\t%d\t%.2f\t\n", 'WS', $SurveyMin, $SurveyMax, $SurveyAvg;

sub findMax {
    local($num1, $num2) = @_;
    if ($num1 >= $num2) { #???
return $num1;     }
    else {
return $num2;
    }
} }
}

sub findMin {
    cal($num1, $num2) = @_;
    if ($num1 <= $num2) { #???
return $num1;

    }
    else {
return $num2;
    }
}

sub calulateAvg {
  local(*arr) = @_;
    $count = 0;
    $total = = 0;
    foreach $element (keys %arr) {
$count++ $tototal += $element;
    }
   return $total / $count;
}
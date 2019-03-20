#!/usr/bin/perl

use Switch;

#minimum variables initialized to 100
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
#$FS = ',';
print "Name\tLow\tHigh\tAverage";



while(<>)

{
@myArr = split(/,/,$_);
#finds maximum number
sub findMax($num1, $num2) {
    $num1 = @myArr[3];
    $num2 = @myArr[3];

    if ($num1 > $num2) {
        return $num1;
    }
    else
{
        return $num2;
}
}

#finds minimum number
sub findMin($num1, $num2) {
    $num1 = @myArr[3];
    $num2 = @myArr[3];

    if ($num1 < $num2) {
        return $num1;
    }
    else
{
       return $num2;
}
}
switch(@myArr[2])
{
    case "H01"
    {
     $H01Max=findMax(@myArr[3], $H01Max);
        $H01Min=findMin(@myArr[3], $H01Min);
    }

    case "H02"
    {
     $H02Max=findMax(@myArr[3], $H02Max);
        $H02Min=findMin(@myArr[3], $H02Min);
    }

    case "H03"
    {
     $H03Max=findMax(@myArr[3], $H03Max);
        $H03Min=findMin(@myArr[3], $H03Min);
    }

    case "H04"
    {
     $H04Max=findMax(@myArr[3], $H04Max);
        $H04Min=findMin(@myArr[3], $H04Min);
    }

    case "H05"
    {
     $H05Max=findMax(@myArr[3], $H05Max);
        $H05Min=findMin(@myArr[3], $H05Min);
    }

    case "H06"
    {
     $H06Max=findMax(@myArr[3], $H06Max);
        $H06Min=findMin(@myArr[3], $H06Min);
    }

    case "H07"
    {
     $H07Max=findMax(@myArr[3], $H07Max);
        $H07Min=findMin(@myArr[3], $H07Min);
    }
}

}

#finds minimum number
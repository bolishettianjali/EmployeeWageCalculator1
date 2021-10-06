#!/bin/bash

echo "Welcome to Employee Wage Calculator"

IS_PRESENT_FULLTIME=1

IS_PRESENT_HALFTIME=2

EMP_RATE_PER_HR=20

empCheck=$((RANDOM%2))

if [ $empCheck -eq $IS_PRESENT_HALFTIME ]
then
	
	empHrs=8

elif [ $empCheck -eq $IS_PRESENT_FULLTIME ]
then 
	empHrs=4
else
	empHrs=0
fi
Totalsalary=$(( $empHrs * $EMP_RATE_PER_HR ));

echo $Totalsalary
echo $Totalsalary

#!/bin/bash

echo "Welcome to Employee Wage Calculator"

IS_PRESENT=1

EMP_RATE_PER_HR=20

empCheck=$((RANDOM%2))

if [ $empCheck -eq $IS_PRESENT ]
then
	
	empHrs=8

else
	empHrs=0
fi

Totalsalary=$(( $empHrs * $EMP_RATE_PER_HR ));

echo $Totalsalary

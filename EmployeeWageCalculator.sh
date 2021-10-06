#!/bin/bash

echo "Welcome to Employee Wage Calculator"

function monthlyWageCalc(){

	local dailyWage=$1

	local daysInMonth=20
	
	local monthlyWage=$(( $daysInMonth*$dailyWage ))

	echo "$monthlyWage"

}

IS_PRESENT_FULLTIME=1

IS_PRESENT_HALFTIME=2

EMP_RATE_PER_HR=20

empCheck=$((RANDOM%3))

case $empCheck in
	
	$IS_PRESENT_FULLTIME ) empHrs=8 ;;
	$IS_PRESENT_HALFTIME ) empHrs=4 ;;
	*) empHrs=0 ;;
esac

salary=$(( $empHrs * $EMP_RATE_PER_HR ));

monthlySalary="$( monthlyWageCalc $salary )"

echo $monthlySalary

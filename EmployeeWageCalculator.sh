#!/bin/bash

echo "Welcome to Employee Wage Calculator"

function monthlyWageCalc(){

	local empHours=$1
	local Salary=$2
	local empWorkHrs=0
	local empWorkDays=1
	local total=0
	
	while [ "$empWorkDays" -le 20 ] && [ "$empWorkHrs" -le 100 ]
	do
		total=$(( $total+$Salary ))
		empWorkDays=$(( $empWorkDays+1 ))
		empWorkHrs=$(( $empWorkHrs+$empHours))
	done
	echo "$total"

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

monthlySalary="$( monthlyWageCalc $empHrs $salary )"

echo "monthly salary is: $monthlySalary"

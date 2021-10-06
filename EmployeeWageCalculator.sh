#!/bin/bash

echo "Welcome to Employee Wage Calculator"

declare -a dailyWages

IS_PRESENT_FULLTIME=1
IS_PRESENT_HALFTIME=2
EMP_RATE_PER_HR=20
MAX_WORKHRS=20
NO_OF_WORKINGDAYS=19

totalWorkHrs=0
totalWorkDys=0
function getWorkingHours(){

	local empCheck=$1
	local empHrs=0
	
	case $empCheck in

	$IS_PRESENT_FULLTIME ) empHrs=8 ;;

	$IS_PRESENT_HALFTIME ) empHrs=4 ;;

	*) empHrs=0 ;;
	esac
	echo $empHrs
}

while [ $totalWorkDys -le $NO_OF_WORKINGDAYS ] && [ $totalWorkHrs -lt $MAX_WORKHRS ]
do
	empCheck=$(( $RANDOM%3 ))
	totalWorkDys=$(( $totalWorkDys + 1 ))
	empHrs="$( getWorkingHours $empCheck )"
	totalWorkHrs=$(( $totalWorkingHours + $empHrs ))
	dailyWages[ $totalWorkDys ]=$(( $empHrs * $EMP_RATE_PER_HR ))
done

salary=$(( $EMP_RATE_PER_HR * $totalWorkHrs ))
echo "Number of days: ${#dailyWages[@]}"
echo "Wages: ${dailyWages[@]}"
echo "Days: ${!dailyWages[@]}"

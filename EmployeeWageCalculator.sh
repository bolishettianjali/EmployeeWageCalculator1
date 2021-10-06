#!/bin/bash

echo "Welcome to Employee Wage Calculator"

declare -A dailyWages

IS_PRESENT_FULLTIME=1
IS_PRESENT_HALFTIME=2
EMP_RATE_PER_HR=20
MAX_WORKHRS=20
NO_OF_WORKINGDAYS=20

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

i=1
totalWage=0

while [ $i -le $NO_OF_WORKINGDAYS ] && [ $totalWorkHrs -le $MAX_WORKHRS ]
do
	empCheck=$(( $RANDOM%3 ))
	empHrs="$( getWorkingHours $empCheck )"
	if [ $empHrs -gt 0 ]
	then
	totalWorkDays=$(( $totalWorkDays + 1 ))
	totalWorkHrs=$(( $totalWorkHours + $empHrs ))
	dailyWage[ $i ]=$(( $empHrs * $EMP_RATE_PER_HR ))
	totalWage=$(( $totalWage + $(($empHrs * $EMP_RATE_PER_HR )) ))
	fi
		((i++))
done
salary=$(( $EMP_RATE_PER_HR * $totalWorkHrs ))
echo Number of days: $totalWorkDays
echo Wages: ${dailyWage[@]}
echo Days: ${!dailyWage[@]}
echo Total Wage: $totalWage

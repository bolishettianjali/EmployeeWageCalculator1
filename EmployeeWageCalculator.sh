#!/bin/bash

echo "Welcome to Employee Wage Calculator"

IS_PRESENT=1

empCheck=$((RANDOM%2))

if [ $empCheck -eq $IS_PRESENT ]
then
	
	echo "Employee is present"

else
	echo "Employee is absent"
fi

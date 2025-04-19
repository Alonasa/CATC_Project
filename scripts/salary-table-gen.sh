#!/bin/bash

#Author: Alona Skrypnyk
#Description: Calculate salary progression to expected salary in years.
#Based on that data generate table
current_year=2025
echo ==============================================
echo "    Welcome to the salary scale generator   "
echo ==============================================
#asking current salary, points, increment, and if user is manager and save it to the variables
read -p "Enter your starting salary and the number of points on the salary
scale: " current_salary points
read -p "Enter salary increment: " salary_increment 
read -p "Are you manager? Input yes or no: " is_manager
#checks if user input first character is yes for manager question

shortened_manager=${is_manager:0:1}

if [[ ${shortened_manager,,} == "y" ]]
then
	salary_increment=$(( salary_increment * 2 ))
fi
echo " ____________________________________________ "
echo "|             |                              |"
echo "|     Year    |         Expected salary      |"
echo "|_____________|______________________________|"

for ((n=1; n<=$points; n++))
do
	if [ "$n" -eq 1 ]
	then
		echo "|     $current_year    |              $(( current_salary + (salary_increment * n) ))           |"              
		echo "|_____________|______________________________|"
        else
		echo "|     $(( current_year  + n ))    |              $((current_salary + (salary_increment * n)))           |"
                echo "|_____________|______________________________|"
	fi

done


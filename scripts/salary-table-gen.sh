#!/bin/bash

#Author: Alona Skrypnyk
#Description: Calculate salary progression to expected salary in years.
#Based on that data generate table

current_year=2025
echo ==============================================
echo "    Welcome to the salary scale generator   "
echo ==============================================
#Asking current salary, points, increment, and if user is manager and save it to the variables
#-p allows us to read user input and show question in the same time


#Checks if user didn't leave empty required field
is_number(){
  local input="$1"
  if [ -z "$input" ] || [[ ! "$input" =~ ^[0-9]+$ ]]; then
        return 0 # Blank or invalid input
  fi
    return 1
}



#Checks if inputs isnt blank -z checks if the string length is zero
while true;
  do
     read -p "Enter your starting salary and the number of points on the salary scale(e.g, 50000 5) : " current_salary points

    if is_number "$current_salary" || is_number "$points"
    then
        echo "Please check your input"
    else
	break
    fi

   done

read -p "Enter salary increment: " salary_increment 

read -p "Are you manager? Input yes or no: " is_manager

#Checks if user input first character is yes for manager question
shortened_manager=${is_manager:0:1}

if [[ ${shortened_manager,,} == "y" ]]
then
	salary_increment=$(( salary_increment * 2 ))
fi

#Output table header
echo " ____________________________________________ "
echo "|             |                              |"
echo "|     Year    |         Expected salary      |"
echo "|_____________|______________________________|"

#Iterate over points and add point plus current year, plus count the salary
#and generate table based on it
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


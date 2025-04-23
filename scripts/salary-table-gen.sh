#!/bin/bash

#Author: Alona Skrypnyk
#Date: 18/04/2025
#Description: Calculate salary progression to expected salary in years.
#Based on that data generate table

current_year=2025

show_message(){
  echo ==============================================
  echo "    $1   "
  echo ==============================================
}

show_message "Welcome to the salary scale generator"


#Checks if inputs isnt blank -z checks if the string length is zero and its number as well

is_filled_numeric(){
  local input="$1"
  if [ -z "$input" ] || [[ ! "$input" =~ ^[0-9]+$ ]]; then
        return 0 # Blank or invalid input
  fi
    return 1
}


#Asking current salary, points, increment, and if user is manager and save it to the variables
#-p allows us to read user input and show question in the same time

while true
  do
    read -p "Enter your starting salary and the number of points on the salary scale(e.g, 50000 5) : " current_salary points

    if is_filled_numeric "$current_salary" || is_filled_numeric "$points"
    then
        echo "Please check your input"
    else
	break
    fi
  done


#Get salary increment
while true
  do
    read -p "Enter numeric salary increment(e.g, 2000): " salary_increment 
   
    if is_filled_numeric "$salary_increment"
    then
	echo "Please make a valid salary increment (e.g, 2000)"
    else
        break
    fi
  done


#Checks if user input first character is yes for manager question
while true
  do
    read -p "Are you manager? Input yes or no: " is_manager
    shortened_manager=${is_manager:0:1}
   
    if [[ ${shortened_manager,,} == "y" || ${shortened_manager,,} == "n" ]]
    then
	if [[ ${shortened_manager,,} == "y" ]]
	then 
            salary_increment=$(( salary_increment * 2 ))
       	    break
	 else
	    break
	fi
    else
   	echo "Please enter (y or yes) or (n or no)"
    fi
   done


#Output table header
if [ "$points" -gt 0 ]
  then
  echo " ____________________________________________ "
  echo "|             |                              |"
  echo "|     Year    |         Expected salary      |"
  echo "|_____________|______________________________|"
else
  show_message "Thank You!"
fi


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

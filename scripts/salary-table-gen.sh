#!/bin/bash

#Author: Alona Skrypnyk
#Description: Calculate salary progression to expected salary in years.
#Based on that data generate table
echo ==============================================
echo "    Welcome to the salary scale generator   "
echo ==============================================
#asking current salary, points, increment, and if user is manager and save it to the variables
read -p "Enter your starting salary and the number of points on the salary
scale: " current_salary points
read -p "Enter salary increment: " salary_increment 
read -p "Are you manager? Input yes or no: " is_manager

resulting=$(( $points * ($current_salary + $salary_increment) ))
echo "You will reach $resulting salary in $points years"


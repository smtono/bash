#!/bin/bash
#===============================================================================
#
#          FILE:  user-input-example.sh
# 
#         USAGE:  ./user-input-example.sh 
# 
#   DESCRIPTION:  Demonstrates reading user input in Bash
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  02/14/2021 05:56:17 PM CST
#      REVISION:  ---
#===============================================================================

# We can manipulate user input by using "read"
echo "Enter your name!"
read name # This reads the user's input
echo "Hello $name!"

# Adding two numbers the user inputs
echo "Enter a number!"
read num1
echo "Enter another number!"
read num2
echo -n "$num1 + $num2 = "
num3=$(( num1+num2 ))
echo $num3

#!/bin/bash
#===============================================================================
#
#          FILE:  function-example.sh
# 
#         USAGE:  ./function-example.sh 
# 
#   DESCRIPTION:  Demonstrates subroutines in Bash
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  02/14/2021 07:16:50 PM CST
#      REVISION:  ---
#===============================================================================

function Area() { # You can declare a function in this way with the curly brace
	area=$(($1 * $2)) # We get the two arguments passed
	echo "The area is $area"
}

Area 10 20 # We pass in parameters, or arguments, to use to calculate the area

function greeting() {
	echo "Hello there! What's your name?"
	read name
	echo "Nice to meet you $name!"
}

# We can now call this function which will run the commands inside of it
greeting

#=============================================================================

# All variables in Bash are global by default, even if inside the function.
var1="Hello"
var2="Wonderful!"

# Though we can use "local" keyword to keep the variable within the function
function add_strings() {
	local var2="Terrible!"
	echo "Inside the function: $var1 I'm $var2"
}

echo "Before function: $var1 I'm $var2"
add_strings
echo "After function: $var1 I'm $var2"

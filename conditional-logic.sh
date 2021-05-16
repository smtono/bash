#!/bin/bash
#===============================================================================
#
#          FILE:  conditional-logic.sh
# 
#         USAGE:  ./conditional-logic.sh 
# 
#   DESCRIPTION:  Demonstrates if, else, elif, and case statements in Bash
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  02/14/2021 06:06:01 PM CST
#      REVISION:  ---
#===============================================================================

num=300

# We can use "-lt" "-gt" "-eq" and "-ne" for conditional logic
# Respectively means less than, greater than, equal, and not equal.
if [ $num -lt 10 ]; # The opening if statement checks if num is less than 10
then
	echo "That is a small number!"
elif [[ ( $num -gt 100 && $num -lt 500 ) ]]; # Else if is "elif" we are checking 2  conditions using the AND operator "&&"
then
	echo "That is pretty big number!"
else # The else is if none of the above is true
	echo "What are you doing?!"
fi

# A case statement is an alternative to the above
echo "Enter your favorite color!"
read color

case $color in # Begin a case statement like this
	Red) # Different cases will look like this
		echo "The color of fire!"
		;; # Break out of the case statement with two semicolons
	Orange)
		echo "The color of a great citrus fruit!"
		;;
	Yellow)
		echo "The color of the sun!"
		;;
	Green)
		echo "The color of the grass!"
		;;
	Blue)
		echo "The color of the sea!"
		;;
	Purple)
		echo "The color of royalty!"
		;;
	*) # The default case
		echo "What a strange color."
		;;
esac # End the case statement


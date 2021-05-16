#!/bin/bash
#===============================================================================
#
#          FILE:  loops-example.sh
# 
#         USAGE:  ./loops-example.sh 
# 
#   DESCRIPTION:  Demonstrates a while loop and a for loop in Bash
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  02/14/2021 05:34:54 PM CST
#      REVISION:  ---
#===============================================================================

# A while loop
continue=true
count=1
while [ $continue ] # We put the condition in brackets
do # Tell what we want to happen while the condition is true
	echo $count
	if [ $count -eq 10 ] # "If count is equal to 10"
	then
		break
	fi # End of the if statement
	((count++)) # Increment count
done

# A for loop
for (( count=0; count<10; count++ )) # Declare count and how many iterations
do
	echo $count
done

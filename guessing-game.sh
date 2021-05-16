#!/bin/bash
#===============================================================================
#
#          FILE:  guessing-game.sh
# 
#         USAGE:  ./guessing-game.sh 
# 
#   DESCRIPTION:  Guessing Game solution
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  02/14/2021 08:00:49 PM CST
#      REVISION:  ---
#===============================================================================
answer=7

function game() {
	continue=true
	echo "Enter a number between 1 and 10!"
	read guess

	while [ $continue ]
	do
		if [[ ( $guess -lt 1 || $guess -gt 10 ) ]]
		then
			echo "Number not between 1 and 10!"
			echo "Please enter a number between 1 and 10!"
			read guess
		elif [ $guess -eq $answer ]
		then
			echo "You won!"
			break
		else
			echo "Try again!"
			read guess
		fi
	done
}

game

#!/bin/bash
#===============================================================================
#
#          FILE:  arithmetic-operations.sh
# 
#         USAGE:  ./arithmetic-operations.sh 
# 
#   DESCRIPTION:  To demonstrate arithmetic operations using Bash.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  02/14/2021 12:24:11 AM CST
#      REVISION:  ---
#===============================================================================
# There are three ways to do arithmetic operations in Bash.
# Firstly, using expr which is typically used for integers
expr 1 - 1 # Subtraction

expr 1 + 1 # Addition

sum=$(expr 1 + 1) # Assigning to a variable
echo $sum # Notice -e will remove the newline character

expr 9 / 3 # Division

expr 3 \* 3 # Multiplication: Note we have to escape the * character.

#==============================================================================

# Another way we can do this is by using the "let" command
num=1 
echo $num #notice how we add the $ character before the variable

let num+=1 # Adds 1 to num variable
echo $num # num = 2

let num=6-3 
echo $num # num = 3

let "num = 4 / 2"
echo $num # num = 2

num=0
let num++ # Increment num
echo $num # num = 1

num=1
num2=2
let "num3=$num+$num2" # Adding two variables
echo $num3 # num3 = 3

#==============================================================================

# Another way we can do this is using double parenthesis
# Double parenthesis means "evaluate the expression inside"
num=$((4*6+8))
echo $num # num = 32

((num++)) # Using the increment operation
echo $num # num = 33

((num--))
echo $num # num = 32

(( num += 10 )) # Shorthand evaluation
echo $num # num = 42

(( "num=$num/2" )) # Dividing 42/2
echo $num # num = 21

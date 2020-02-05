#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using $
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it sh$
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while$



read -p "enter the password:" myString



Password="Password"



if [ $myString = $Password ]
then
 echo "You guessed the password!"
else
        echo "The password is wrong"
fi


for try in {1..5}
do
        read -p "Try ($try): enter password:" myString
        if [ $myString = $Password ]
        then
                printf "You guessed the password!\n"
		 break
        else
                echo "The password is wrong"
        fi
done

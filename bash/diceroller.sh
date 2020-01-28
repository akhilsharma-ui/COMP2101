#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
rolling two 6 sided dice
$(( RANDOM % 6 +1 )) "=" first die roll
$(( RANDOM % 6 + 1)) "=" two die roll

modified to add 5 more six sided dice

$(( RANDOM % 6 +1 )) "=" first die roll
$(( RANDOM % 6 + 1)) "=" two die roll
$(( RANDOM % 6 +1 )) "=" third die roll
$(( RANDOM % 6 + 1)) "=" fourth die roll
$(( RANDOM % 6 +1 )) "=" fifth die roll

rolling 20 side dice
$(( RANDOM % 20 + 1)) 


"

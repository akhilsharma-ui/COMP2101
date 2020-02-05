#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your na$
# Task 2: Dynamically generate the value for your hostname variable using the $
# Task 3: Add the time and day of the week to the welcome message using the fo$
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday m$
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="Overlord"
myname="$USER"

today=$(date +%A)
currenttime=$(date +%I:%M\ %p)
###############
# Main        #
###############
title="tuesday is a bright day"
title2="wednesday is hot day"
title3="monday is cold day"
title4="thursday is a full day"
title5="friday is bad day"
title6="saturday is sunny day"
title7="sunday is fun day"


if [ "$today" = "Monday" ]
then 
cat <<EOF
Welcome to planet $hostname, $title3 $USER
It is $currenttime on $weekday
EOF
elif [ "$today" = "Tuesday" ]
then
cat <<EOF
Welcome to planet $hostname, $title $USER
It is $currenttime on $weekday
EOF

elif [ "$today" = "Wednesday" ]
then 
cat <<EOF
Welcome to planet $hostname, $title2 $USER
It is $currenttime on $weekday
EOF

elif [ "$today" = "Thursday" ]
then
cat <<EOF
Welcome to planet $hostname, $title4 $USER
It is $currenttime on $weekday
EOF

elif [ "$today" = "Friday" ]
then
cat <<EOF
Welcome to planet $hostname, $title5 $USER
It is $currenttime on $weekday
EOF

elif [ "$today" = "Saturday" ]
then 
cat <<EOF
Welcome to planet $hostname, $title6 $USER
It is $currenttime on $weekday
EOF

elif [ "$today" = "Sunday" ]
then
cat <<EOF
Welcome to planet $hostname, $title7 $USER
It is $currenttime on $weekday
EOF


fi



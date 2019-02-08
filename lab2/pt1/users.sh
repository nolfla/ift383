#!/bin/bash

echo "whopre.log created"

who > whopre.log

echo "Pausing for 60 seconds, please feel free to change the amount of seconds in the sleep command and/or the echo statement as well"

sleep 60

echo "whopost.log created"

who > whopost.log

echo "List of users logged in before 1 minute"

cat whopre.log

echo "List of users logged in after 1 minute"

cat whopost.log

echo "Comparing whopre.log and whopost.log to see which users are in 1st and 2nd files"

echo "If no users are displayed, then this means no different users were found in whopre.log and/or whopost.log"

diff whopre.log whopost.log

echo "No users were found to be logged in since yesterday due to the commands cat whopre.log and cat whopost.log being used"

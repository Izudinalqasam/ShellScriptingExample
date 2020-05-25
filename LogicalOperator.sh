#!/bin/bash

age=25

if [ $age -gt 18 ] && [ $age -lt 30 ]
then
    echo "valid age"
else
    echo "invalid age"
fi

if [ $age -gt 18 -a $age -lt 30 ]
then
    echo "valid age second time"
else
    echo "invalid age second time"
fi

if [ $age -eq 18 ] || [ $age -eq 30 ]
then 
    echo "valid age third time"
else
    echo "invalid age third time"
fi

if [ $age -eq 18 -o $age -eq 30 ]
then
    echo "valid age fourth time"
else
    echo "invalid age fourth time"
fi

#Note
# to use AND logical operator, you can use -a or && like example above
# to use OR logical operator, you can use -o or || like example above
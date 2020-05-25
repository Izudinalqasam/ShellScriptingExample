#!/bin/bash

n=1
until [ $n -ge 10 ]
do
    echo $n
    (( n++ ))
done

until (( $n <= 0 ))
do
 echo $n
 (( n-- ))
done

#Note
# - Until loop will execute command if the condition is false, whereas while loop if the condition is true
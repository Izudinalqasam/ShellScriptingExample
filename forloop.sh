#!/bin/bash

for index in {1..5}
do
    echo "$index"
done

echo ==========================================
for index in 1 2 3 4 5
do
    echo "$index"
done

echo =========================================
for index in {0..10..2} # {Start..End..Increment} this is work over 4.0.0 BASH_VERSION
do
    echo $index
done

echo ========================================
for (( i=0; i<5; i++ ))
do
    echo $i
done

echo ========================================
# For loop of command
for command in ls pwd date
do
    echo -e "--------------$command----------------"
    $command
    echo -e "\n"
done

echo ========================================
# For loop to print directory
for item in * # * means it will iterate all directory where i am in
do
    if [ -d $item ]
    then
        echo $item
    fi
done
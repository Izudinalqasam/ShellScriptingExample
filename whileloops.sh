#!/bin/bash

n=1

while (( $n <= 10 ))
do
    echo "$n"
    n=$(( n+ 1 ))
done

echo ===============================================
while [ $n -ge 1 ]
do
    echo "$n"
    n=$(( n-1 ))
done

echo ===============================================
while [ $n -le 10 ]
do
    echo "$n"
    (( n++ ))
done

echo ===============================================
#Preincrement
while [ $n -ge 1 ]
do
    echo "$n"
    (( --n))
done

echo ===============================================
#Sleep command
while [ $n -le 10 ]
do
    echo "$n"
    (( n++ ))
    sleep 1  # Sleep 1 second
done

echo =============================================
#Open terminal
n=1
while [ $n  -le 2 ]
do
    (( n++ ))
    open -a terminal
done

echo =============================================
#input redirection
while read p  # the input content will be stored in p variable
do
    echo $p
done < ifelse.sh # file redirected

# another way to do same thing above, read file content into one variable and print it
cat ifelse.sh | while read k # Everything read by cat will be passing as an input to while read k
do
    echo $k
done

while IFS=' ' read -r line # -r prevent backslash escape from being interpreted
do
    echo $line
done < ifelse.sh

#Note
# terminals are devided by 2 kind, genome and xterm but in mac you can use open -a terminal
# IFS (internal feel separator) this is used by the shell to determine how to do word splitting and recognize word boundaries
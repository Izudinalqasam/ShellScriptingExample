#! /bin/bash

count=10

if [ $count -eq 10 ]
then
    echo "condition is true"
fi

word=abc

if [ $word == "abc" ]
then
    echo "THe word is same"
elif [[ word == "cba"]]
then
    echo "The word is reversed"
else
    echo "the word is not same"
fi

#Some expression can be used
# Integer Comparison
# -eq --> is equal to --> if [ 1 -eq 0 ]
# -ne --> is not equal --> if [ 1 -ne 0 
# -gt --> is greater than --> if [ 1 -gt 0 ]
# -ge --> is greater than or equal to --> if [ 1 -ge 0 ]
# -lt --> is less than --> if [ 1 -lt 0 ]
# -le --> is less than or equal to --> if [ 0 -le 1]
# < --> is less than --> ((1 < 0)) 
# <= --> is less than or equal to --> ((1 <= 0))
# > --> is greater than --> ((1 > 0))
# >= --> is greater than and equals to --> ((1 >= 0))

#String comparison
# = --> is equal to --> if [ "ba" = "ba" ]
# == --> is equal to --> if [ "ba" == "ba" ]
# != --> is not equal to --> if [ "ba" != "ba" ]
# < --> is less than, in ASCII alphabetical order --> if [[ "ba" < "ba" ]]
# > --> is greater than, in ASCII alphabetical order --> if [[ "ba" > "ba" ]]
# -z --> string is null, (has zero lenght)

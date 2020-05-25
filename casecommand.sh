#!/bin/bash

# read first argument and store it to vehicle
vehicle=$1

case $vehicle in
    "car" )
        echo "Rent of $vehicle is 100 dollar" ;;
    "van" )
        echo "Rent of $vehicle is 80 dollar" ;;
    "bicycle" )
        echo "Rent of $vehicle is 5 dollar" ;;
    "truck" )
        echo "Rent of $vehicle is 150 dollar" ;;
    * )
        echo "Unknown vehicle" ;;
esac

echo ============================================
echo -e "Enter some character : \c"
read value

case $value in
    [a-z] )
        echo "Use entered $value a to z" ;;
    [A-Z] )
        echo "Use entered $value A to Z" ;;
    [0-9] )
        echo "Use entered $value 0 to 9" ;;
    ? )
        echo "Use entered $value special characters" ;;
    * )
        echo "Unknown input" ;;
esac



#Note
# - * as a default pattern if all cases doesn't match
# use [] to make a patter, [a-z] means the input is range a to z
# - ? it is pattern which expect any special character which is one letter character
# * will hanlde multiple character, ? only single letter character
# - if above expression result error(doesn't return properly) you can set LANG to C by lANG=C, before you run the script
# LANG environment variable indicates the language/locale and encoding, where "C" is the language setting
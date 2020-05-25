#!/bin/bash

num1=20
num2=5

echo $(( num1 + num2 ))
echo $(( num1 * num2 ))
echo $(( num1 - num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))

echo ===========================================
echo $(expr $num1 + $num2)
echo $(expr $num1 - $num2)
echo $(expr $num1 \* $num2)
echo $(expr $num1 / $num2)
echo $(expr $num1 % $num2)

echo ===========================================
num1=20.5
echo "Decimal number"
echo "$num1+$num2" | bc
echo "20.5-5" | bc
echo "20.5*5" | bc
echo "scale=3; 20.5/5" | bc
echo "20.5%5" | bc

echo ===========================================
num=16
echo "scale=2; sqrt($num)" | bc -l
echo "scale=2; 3^3" | bc -l # it will  result 27 (3x3X3)

#Note:
# - to do arithmetic operator you can use (( )) and preceded by $
# alternatively you can use expr and $ before variable
# bs(basic calculator) is arbitrary precision calculator language, you can use it to print decimal value because shell does not do arithmatic operation to decimal value by default
# using | bc means, the left side of pipe(|) will be an input of bc and will print the bc to the terminal
# - scale syntax can be used to make value has some decimal digit based on scale value, always use scale for devision operation
# like example above we have value with two decimal digit
# bc can work with math operation, so you can use bc -l to use math library with the bc command if just bc command doesn't work
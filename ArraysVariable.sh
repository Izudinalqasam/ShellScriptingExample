#!/bin/bash

os=('ubuntu', 'windows', 'kali', 'elementary')

echo "${os[@]}"
echo "${os[2]}"
echo "${!os[@]}" # it will print index of array
echo "${#os[@]}" # it will print length of array

os[4]='mac' #add element
os[0]='mintz' #replace specific element
echo "${os[@]}"

unset os[2]
echo "${os[@]}"
echo "${!os[@]}"

strArray=abcdfghijk # it will store to first element array
echo "${strArray[@]}"
echo "${strArray[1]}" # so when you acces the index 1 it will print nothing because the value stored into index 0

#Note
# - [@] means print all element in the array
# - unset will remove the element and index from the array
# - you can add any element into array in the arbitrary position
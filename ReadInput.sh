#!/bin/bash

echo "Enter name : "
read name #the input will be saved into name variables
echo "Entered name is $name"

echo "Enter multiple name below :"
read name1 name2 name3
echo "The entered name in the list is $name1 $name2 $name3"

# print text and store the input into varibale in single line
read -p "Salary : " salary1
echo "Your input salary is $salary1"

# to make the input hidden from terminal like using password, use silent (-s) to do that
read -sp "passowrd : " pass1 # so when you type a password, it will be hidden on terminal, make sure you use paramete correctly -sp not -ps
echo # use only echo to print enter or space 
echo "The inputed password is $pass1"

# to read input of array you can use -a, it is like enter multiple value above, but this is stored in a variable
echo "Enter array of number"
read -a names
echo "Names : ${names[0]}, ${names[1]}"

# if you dont specify variable which save the input value, the value will automatically be stored in "REPLY" variable
echo "Input your arbitrary value"
read 
echo "THe value of Default variable stored is $REPLY"
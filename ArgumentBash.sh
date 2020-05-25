#!/bin/bash

# the parameter you passed to bash, it will be default can be accessed by order of number such as $1, $2, etc
# $0 will display the script name
echo $0 $1 $2 $3 ' > echo $1 $2 $3' # the parameter which passed to $1 $2 $3 will be displayed directly 

# pass argument as array and use them, you can use $@ to store argument as an array to default variable($@) and store to args
# to access the argument use like below, ${arg[0]} not the script name but the first argument
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]}
echo $@ # it will print all argument 
echo $# # it will print number of arguments
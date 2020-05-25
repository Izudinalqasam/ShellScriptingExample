#!/bin/bash

var=10
readonly var

var=1
echo "var => $var"

echo ==============================
#Function readonly

hello() {
    echo "hello shell"
}

readonly -f hello

#Override function
hello() {
    echo "hello readonly function"
}

# this will print all readonly built in variables
readonly -p
readonly -f # for function

#Note
# - Readonly command can be used with variables and function by readonly, readonly will prevent you to reassign or write to variables
# - to make function readonly you just add " readonly -f <function name> "  
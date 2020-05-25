#!/bin/bash

# Funtion type 1
function printHelloWorld() {
    echo $1 $2 $3 # multiple argument
}

# Function type 2
quit () {
    echo "Quiting game"
    exit
}

printHelloWorld Hello World Again
quit

echo "foo"
quit
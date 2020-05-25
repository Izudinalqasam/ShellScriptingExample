#!/bin/bash

function print(){
    local name=$1 # it will make name be a local variable
    echo "the name is $name"
}

name="tom"

echo "The name is $name: Before calling function"

print max

echo "Finish with name is $name"

echo =================================================================
#Read file
is_file_exist() {
    local file=$1
    # it will check if the file exists it will only execute OR condition || return 1, 
    # if not it will only execute AND condition && return 0
    [[ -f $file ]] && return 0 || return 1 
}

usage() {
    echo "you need to provide an argument : "
    echo "usage : $0 file name"
}

 # $# will give the number of arguments
[[ $# -eq 0 ]] && usage

# $1 is argument provided to a script
if ( is_file_exist "$1" )
then
    echo "File found"
else
    echo "File not found"
fi

#Note
# - all variable are global in shell script
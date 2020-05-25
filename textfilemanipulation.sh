#!/bin/bash

echo -e "Enter the name of the file : \c"
read file_name

if [ -f $file_name ]
then
    if [ -w $file_name ]
    then
        echo "Type some text data. To quit press ctrl+d"
        cat >> $file_name
    else
        echo "The file does not have write permissions"
    fi
else
    echo "$file_name is not exists"
fi

#Note
# cat > , it will override the existing data
# cat >> , it will append new data to the new existing data
# cat , it will print the content inside a file
#!/bin/bash

echo -e "Enter the name of file : \c"
read file_name

if [ -e $file_name ]
then
    echo "$file_name found"
else
    echo "$file_name not found"
fi

if [ -f $file_name ]
then
    echo "$file_name is a file"
else
    echo "$file_name is not a file"
fi

if [ -d $file_name ]
then
    echo "$file_name is a directory"
else
    echo "$file_name is not a directory"
fi

if [ -b $file_name ]
then
    echo "$file_name is block special file"
else
    echo "$file_name is not a block special file"
fi

if [ -c $file_name ]
then
    echo "$file_name is character special file"
else
    echo "$file_name is not a character special file"
fi

if [ -s $file_name ]
then
    echo "$file_name is not empty"
else
    echo "$file_name is empty"
fi

if [ -r $file_name ]
then
    echo "$file_name has read permissions"
else
    echo "$file_name has no read permissions"
fi

if [ -w $file_name ]
then
    echo "$file_name has write permissions"
else
    echo "$file_name has no write permissions"
fi

if [ -x $file_name ]
then
    echo "$file_name has execute permissions"
else
    echo "$file_name has no execute permissions"
fi

#Note
# - \c will keep the cursor in the same line, to let shell understand it you can use -e
# -e inside the condition will check whether the file is exist or not
# -f inside the condition will check whether the file_name is a file and exist or not
# -d inside the condition will check whether the file_name is a directory and exist or not
# -b inside the condition will check whether the file_name is a block special file
# -c inside the condition will check whether the file_name is a character special file
# -s inside the condition will check whether the file_name is not empty
# -r inside the condition will check whether the file_name has read permissions or not
# -w inside the condition will check whether the file_name has write permisiion or not
# -x inside the condition will check whether the file_name has execute permissions or not

# type of file
# - block special file -->  picture, video, mucic file etc
# - character special file --> normal file which contains the stored data, text etc
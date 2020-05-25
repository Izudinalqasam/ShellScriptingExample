#!/bin/bash

echo "pid is $$"
while (( COUNT < 10 ))
do
    sleep 10
    (( COUNT++ ))
    echo $COUNT
done
exit 0 # it will exit the script

# Whenever we receive 0 signal, then it will execute command inside double quotes
Trap "echo Exit command is detected" 0

#Note
# - $$ it will print pid of the script itself
# - ctrl + c (interupt signal / sigint) is signal for exit from script
# - ctrl + z (suspend signal / sigtstp) is signal for stop script
# - kill -9 <PID number> (signal kill/  sigkill) is signal for kill and stop the script, you can use this command from another terminal
# Trap command provide to capture and interupt and then clean it within the script, 
# Trap command in the script will be able to catch kind of kill or ctrl + shift or z etc, 
# and will be able to do some kind of stop before exiting out
# man 7 signal will print all signal in shell
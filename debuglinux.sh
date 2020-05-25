#!/bin/bash -x 
#that is the second way

# this is the third way
set -x
file=/home/test/Documents/file.txt
set +x

trap "rm -f $file && echo file deleted; exit" 0 2 9 15

echo "pid is $$"
while (( COUNT < 10 ))
do
    sleep 10
    (( COUNT++ ))
    echo $COUNT
done
exit 0

#Note
# - to debug script in linux you can use bash -x <script name> on your terminal
# - the second way is write -x on the she bang i.e "#!/bin/bash -x"
# - the third way is using "set -x" and "set +x", it will start the debug mode in any position set -x placed
# and set +x will stop the debug mode
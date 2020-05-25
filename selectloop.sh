#!/bin/bash

select name in mark john tom ben
do
    case $name in
        mark )
            echo "Mark Selected" ;;
        john )
            echo "John Selected" ;;
        tom )
            echo "Tom Selected" ;;
        ben )
            echo "Ben Selected" ;;
        * )
            echo "Invalid name" ;;
    esac
done

#Note
# - allows us generate easy menu, if you write script and need some menus you can select loop
# the menu like below
# 1) Mark 
# 2) John
# 3) ben
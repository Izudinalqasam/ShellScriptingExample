#!/bin/bash

# This is comment
echo "Hello world!"  # another comment

# Environment variables
echo our shell name $BASH
echo our bash version is $BASH_VERSION
echo our home directory is $HOME
echo our current working directiory is $PWD

# User defined variable
# When declaring variable avoid space between variable, assign symbol and value
# Varibale name should not begin with number, becuase it is not considered as variable
name=Mark
echo The name is $name
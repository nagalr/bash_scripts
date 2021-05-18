#!/usr/bin/env bash

# Author: Ronnen Nagal
# Date: May 17,2021
# Description: Script to loop over array of Strings
# Date Modified: May 17,2021
clear

# Statement to the User
echo
echo Loop over array of Strings.
echo

# Variables
hosts="abc efg 101 1.23 #@##^%#^$&"

# Execution
for i in $hosts ; do
    echo $i
done


echo
echo End of Script


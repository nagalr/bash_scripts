#!/usr/bin/env bash

# Author: Ronnen Nagal
# Date: May 14,2021
# Description: --complete--
# Date Modified: May 14,2021
clear

# Statement to the User
echo
echo Script to ...
echo

# Variables


# Execution
#ls -ltr /Users/ronnen/Desktop/file.py
#if [ $? -eq 0  ]; then
#    echo
#    echo file exists
#    else
#      echo
#      echo file does not exists
#fi


echo
echo End of Script


xcode-select -p 1>/dev/null;echo $?

if [ $? -eq 0  ]; then
    echo
    echo xcode exists moving ahead
    else
      echo
      echo Installing xcode cli
      xcode-select --install
fi

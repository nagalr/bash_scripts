#!/usr/bin/env bash

# Author: Ronnen Nagal
# Date: May 17,2021
# Description: Script to Rename files ending with .txt
# Date Modified: May 17,2021
clear

# Statement to the User
echo
echo Rename files ending with .txt
echo

# Execution

: "
Look for all text files in the current directory. (ending with .txt)
'mv' to rename file names.
-- marks the end of the option list.
(To avoids issues with filenames starting with hyphens)
${filename%.txt} is a parameter expansion,
replaced by the value of the filename variable with .txt removed from the end.
'.none' - the newly added file-extension. (can leave it empty)
"
for filename in *.txt ; do
    mv -- "$filename" "${filename%.txt}".none
done


echo
echo End of Script


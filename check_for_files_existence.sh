#!/usr/bin/env bash

# Author: Ronnen Nagal
# Date: May 17,2021
# Description: Script to Check for existence of files
# Date Modified: May 17,2021
clear

# Statement to the User
echo
echo Check for files existence in the system
echo

# Variables

# 'FILES' defined as a list of files to check
FILES="/etc/passwd
/etc/group
/etc/nanorc
/etc/ssh/ssh_config
/etc/ssl/openssl.cnf
/etc/fake"

# Execution

: "
Verify all files in 'FILES' exists in the system.
If a file does exists, do nothing and continue.
If a file does-not exists, echo file-name plus a message.
'! -e' means 'not exists'
"
for file in $FILES ; do
    if [ ! -e "$file" ]; then
        echo "$file" do-not exist
    fi
done

echo
echo End of Script



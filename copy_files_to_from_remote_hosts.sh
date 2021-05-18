#!/usr/bin/env bash

# Author: Ronnen Nagal
# Date: May 17,2021
# Description: Script to copy files to Remote host
# Date Modified: May 17,2021
clear

# Statement to the User
echo
echo Copy files to Remote Host
echo

# Variable: can hold multiple hosts in a string with space between,
# Like "hosts1 hosts2 hosts10"
hosts="root@80.69.172.141"

# Execution: copy 'text.txt' from 'Desktop' in local machine
# to remote host(s) directory /root/tmp
for i in $hosts ; do
    echo copy files to $i
    echo
    scp ~/Desktop/test2.txt $i:/root/tmp
done

# Example2:
# Variable: List of hosts in a 'hosts' file on ~/Desktop.
# can hold multiple hosts in a string with space between,
# Like "hosts1 hosts2 hosts10"
hosts=$(cat ~/Desktop/hosts)

# Execution: copy 'text.txt' from 'Desktop' in local machine
# to remote host(s) directory /root/tmp
for i in $hosts ; do
    echo copy files to $i
    echo
    scp ~/Desktop/test2.txt $i:/root/tmp
done

# Example3:
# Variable: 'dir' a directory on the Desktop
# use "/Users/ronnen/Desktop/dir/*" to copy all files in 'dir' (no sub-dirs will copy)
# use "/Users/ronnen/Desktop/dir/*.txt" to copy all txt files
# use "/Users/ronnen/Desktop/dir/" with 'scp -r' to copy all files and sub-dirs in 'dir'
dir_to_copy_from="/Users/ronnen/Desktop/dir/*"

# Execution: copy all files from 'dir_to_copy_from' directory
# to all hosts in 'hosts'
for i in $hosts ; do
  echo
  echo copy files to $i
  echo
  for file in $dir_to_copy_from ; do
    scp "$file" $i:/root/tmp
  done
done


# More Examples

scp /Users/name/Downloads/*.txt user@remote.server.com:/path/to/directory
# In this example, you'd be uploading all text files from your downloads
# to the remote server

scp user@remote.server.com:/path/to/directory/*png /Users/name/Downloads
# In this example, you'd be downloading all png files from the remote
# server to your downloads directory

scp user@remote.server.com:/path/to/directory/my_favorite_file.txt user@other.remote.server.com:/path/to/directory
# In this example, you'd be moving a file from one remote server to
# another remote server

scp -r user@remote.server.com:/path/to/directory /Users/name/Downloads
# In this example the -r flag is used to state that this is a recursive
# download, meaning that all files and subdirectories in the directory
# will be downloaded to the local Downloads directory


echo
echo End of Script


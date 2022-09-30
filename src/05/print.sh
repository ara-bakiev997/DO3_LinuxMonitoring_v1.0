#!/bin/bash

GREEN='\033[92m'
BGWHITE='\033[107m'
NORMAL='\e[0m'

total_number=`sudo find $1 -type d | wc -l`
count_file_in_dir=`ls -la $1 | grep "^d" | wc | awk '{print $2}'`
# top5_dir=`sudo ls -la $1 | awk $first_simbol=="d" {print}`

echo -e "Total number of folders (including all nested ones)$BGWHITE = $GREEN$total_number$NORMAL"
echo -e "Total number of folders (including all nested ones)$BGWHITE = $GREEN$count_file_in_dir$NORMAL"
echo -e "TOP 5 folders of maximum size arranged in descending order (path and size):" 
# for (( i = 0; i < 5; i++ ))
# do









# echo "1 - /var/log/one/, 100 GB"  
# echo "$top5_dir"
# 2 - /var/log/two/, 100 MB  
# etc up to 5
# Total number of files = 30
# Number of:  
# Configuration files (with the .conf extension) = 1 
# Text files = 10  
# Executable files = 5
# Log files (with the extension .log) = 2  
# Archive files = 3  
# Symbolic links = 4  
# TOP 10 files of maximum size arranged in descending order (path, size and type):  
# 1 - /var/log/one/one.exe, 10 GB, exe  
# 2 - /var/log/two/two.log, 10 MB, log  
# etc up to 10  
# TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)  
# 1 - /var/log/one/one.exe, 10 GB, 3abb17b66815bc7946cefe727737d295  
# 2 - /var/log/two/two.exe, 9 MB, 53c8fdfcbb60cf8e1a1ee90601cc8fe2  
# etc up to 10  
# Script execution time (in seconds) = 1.5

#!/bin/bash

GREEN='\033[92m'
BGWHITE='\033[107m'
NORMAL='\e[0m'

total_number_folder=`sudo find $1 -type d | wc -l`
top_5_folders=`sudo find $1 -type d -exec du -h {} \; | sort -rh | head -5 | cat -n | awk '{print $1 " - " $3 ", " $2}'`
#sudo du -h $1 | sort -rh | head -5 | cat -n | awk '{print $1 " - " $3 ", " $2}' - top 5 folders 
total_number_files=`sudo find $1 -type f -exec ls -l {} \; | wc -l`
# `find $1 -type f | wc -l`
configuration_files=`sudo find $1 -type f -exec ls -l {} \; | grep ".conf$" | wc -l`
# `bash ls -la $1 | grep ".conf$" | wc -l`
text_files=`sudo find $1 -type f -exec ls -l {} \; | grep ".txt$" | wc -l`
# `ls -la $1 | grep ".txt$" | wc -l`
executable_files=`sudo find $1 -type f -perm /a=x | wc -l`
# ls -la $1 | grep "^-..x" | wc -l`
log_files=`sudo find $1 -type f -exec ls -l {} \; | grep ".log$" | wc -l`
archive_files=
symbolic_links=`ls -la $1 | grep "^l" | wc -l`
top_10_files=`sudo find $1 -type f -exec du -h {} \; | sort -rh | head -10 | cat -n | awk '{print $1 " - " $3 ", " $2}'`
top_10_exe=`sudo find $1 -type f -perm /a=x -exec du -h {} \; | sort -rh | head -10 | cat -n | awk '{print $1 " - " $3 ", " $2}'`


echo "Total number of folders (including all nested ones) = $total_number_folder"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):" 
for i in "${top_5_folders[@]}"
do  
    echo "$i"
done

echo "Total number of files = $total_number_files"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $configuration_files"
echo "Text files = $text_files"  
echo "Executable files = $executable_files"
echo "Log files (with the extension .log) = $log_files"
echo "Archive files = $archive_files"  
echo "Symbolic links = $symbolic_links"  
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
for i in "${top_10_files[@]}"
do  
    echo "$i"
done


# for (( i = 0; i < 5; i++ )); do
#         if [[ -z "${top_5_folders_way[i]}" ]]
#         then
#                 break
#         fi
#         printf "%d - " "$((i + 1))"
#         printf "${top_5_folders_way[$i]}, "
#         printf "${top_5_folders_way[$i]}\n"
# done








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

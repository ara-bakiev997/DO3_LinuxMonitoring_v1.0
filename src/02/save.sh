#!/bin/bash

echo "Do you want to save? [y/n]"
read answer
if [[ $answer == "y" ]]
    then
        bash print.sh >  $(date +"%d_%m_%y_%H_%M_%S.status") #DD_MM_YY_HH_MM_SS.status
fi
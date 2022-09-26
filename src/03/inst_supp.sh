#!/bin/bash

dpkg -s net-tools &> /dev/null
if [[ $? != 0 ]] 
    then 
        echo "Need to install net-tools [y/n]"
        read answer
        if [[ $answer == "y" || $answer == "Y" ]]
            then
            echo "Installing in progress.."
            sudo apt install net-tools &> /dev/null
        else 
            bash main.sh
        fi
fi
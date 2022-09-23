#!/bin/bash

if [[ $# == 0 ]] 
    then 
    chmod +x print.sh
    bash print.sh
    chmod +x save.sh
    bash save.sh
else
    echo "Error, only without arguments"
fi



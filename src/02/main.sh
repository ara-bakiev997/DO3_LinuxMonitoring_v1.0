#!/bin/bash

if [[ $# == 0 ]] 
    then 
    chmod +x inst_supp.sh
    bash inst_supp.sh
    chmod +x print.sh
    bash print.sh
    chmod +x save.sh
    bash save.sh
else
    echo "Error, only without arguments"
fi



#!/bin/bash

if [[ $# == 4 ]] 
    then 
    if [[ $1 -eq $2 || $3 -eq $4 ]]
        then
        echo "Error, the font and background colors of the same column must not match. Run the script again!!!"
        else
        chmod +x inst_supp.sh
        bash inst_supp.sh
        chmod +x print.sh
        bash print.sh $1 $2 $3 $4
    fi
else
    echo "Error, the script is run with 4 parameters."
fi



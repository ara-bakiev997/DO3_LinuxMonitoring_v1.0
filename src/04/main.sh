#!/bin/bash

if [[ $# == 4 ]] 
    then 
    if [[ $1 -eq $2 || $3 -eq $4 ]]
        then
        echo "Error! Parameter_1 != Parameter_2 and Parameter_3 != Parameter_4. 
       1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black
       Run the script again"
        else
        chmod +x inst_supp.sh
        bash inst_supp.sh
        chmod +x set_color_value.sh
        chmod +x print.sh
        bash print.sh $1 $2 $3 $4
    fi
else
    echo "Error, the script is run with 4 parameters."
    exit 1
fi



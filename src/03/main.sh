#!/bin/bash

argv[0]=$1
argv[1]=$2
argv[2]=$3
argv[3]=$4

for (( i = 0; i < $#; i++))
do
    if [[ ${argv[$i]} -le 0 || ${argv[$i]} -ge 7 ]]
        then
        echo -e "1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black\nRun the script again"
        exit 1
    fi
done

if [[ $# == 4 ]] 
    then 
    if [[ $1 -eq $2 || $3 -eq $4 ]]
        then
        echo -e "Error! Parameter_1 != Parameter_2 and Parameter_3 != Parameter_4\nRun the script again"
       exit 1
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



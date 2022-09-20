#!/bin/bash

re='^[0-9]+$'

if [[ $1 =~ $re ]]
then 
echo "Error, only string"
else 
echo $1
fi
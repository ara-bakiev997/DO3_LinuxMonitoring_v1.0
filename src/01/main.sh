#!/bin/bash

re='^[0-9]+$'

if [[ $# == 1 ]] 
  then
  if [[ $1 =~ $re ]]
    then 
    echo "Error, only string"
  else 
  echo $1
  fi
else
echo "Error, only one parameter"
fi
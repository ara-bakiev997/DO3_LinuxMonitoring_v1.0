#!/bin/bash

TIMEZONE=`timedatectl | awk '$2=="zone:" {print $3 " " $4 $5}'`
OS=`uname -mrs`

echo "Print"
echo "HOSTNAME = $HOSTNAME"
echo "TIMEZONE = $TIMEZONE"
echo "USER = $USER"
echo "OS = $OS"
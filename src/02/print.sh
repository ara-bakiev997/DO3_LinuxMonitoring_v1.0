#!/bin/bash

TIMEZONE=`timedatectl | awk '$2=="zone:" {print $3 " " $4 $5}'`
OS=`uname -mrs`
DATE=`date | awk '{print  $2 " " $3 " " $4 " " $5}'`
UPTIME=`uptime -p`
UPTIME_SEC=`cat /proc/uptime | awk '{print $1 " sec"}'`
IP=`hostname -I | awk '{print $1}'`
MASK=`ifconfig | awk '$3=="netmask"&&$4!="255.0.0.0" {print $4}'`
GATEWAY=`ip route | grep default | awk '{print $3}'`
RAM_TOTAL=`cat /proc/meminfo | awk '$1=="MemTotal:" {printf ("%.3f GB\n", $2/1024^2)}'`
RAM_USED=`vmstat -s | awk '$3=="used"&&$4=="memory" {printf ("%.3f GB\n", $1/1024^2)}'`
RAM_FREE=`vmstat -s | awk '$3=="free"&&$4=="memory" {printf ("%.3f GB\n", $1/1024^2)}'`   #размер свободной памяти в Гб c точностью три знака после запятой
SPACE_ROOT=`df -l /root/ | awk '$6=="/" {print $2/1024 " Mb"}'` #размер рутового раздела в Mб с точностью два знака после запятой в виде: 254.25 MB
SPACE_ROOT_USED=`df -l /root/ | awk '$6=="/" {print $3/1024 " Mb"}'` #размер занятого пространства рутового раздела в Mб с точностью два знака после запятой
SPACE_ROOT_FREE=`df -l /root/ | awk '$6=="/" {print $4/1024 " Mb"}'` #размер свободного пространства рутового раздела в Mб с точностью два знака после запятой

echo "HOSTNAME = $HOSTNAME"
echo "TIMEZONE = $TIMEZONE"
echo "USER = $USER"
echo "OS = $OS"
echo "DATE = $DATE"
echo "UPTIME = $UPTIME"
echo "UPTIME_SEC = $UPTIME_SEC"
echo "IP = $IP"
echo "MASK = $MASK"
echo "GATEWAY = $GATEWAY"
echo "RAM_TOTAL = $RAM_TOTAL"
echo "RAM_USED = $RAM_USED"
echo "RAM_FREE = $RAM_FREE"
echo "SPACE_ROOT = $SPACE_ROOT"
echo "SPACE_ROOT_USED = $SPACE_ROOT_USED"
echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE"

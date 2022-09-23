#!/bin/bash

TIMEZONE=`timedatectl | awk '$2=="zone:" {print $3 " " $4 $5}'`
OS=`uname -mrs`
DATE=`date | awk '{print  $2 " " $3 " " $4 " " $5}'`
UPTIME=`uptime -p`
UPTIME_SEC=`cat /proc/uptime | awk '{print $1 " sec"}'`
IP=`ip a | awk '$1=="inet"&&$2!="127.0.0.1/8" {print $2}'   `
# MASK= сетевая маска любого из сетевых интерфейсов в виде: xxx.xxx.xxx.xxx
# GATEWAY= ip шлюза по умолчанию
# RAM_TOTAL= размер оперативной памяти в Гб c точностью три знака после запятой в виде: 3.125 GB
# RAM_USED= размер используемой памяти в Гб c точностью три знака после запятой
# RAM_FREE= размер свободной памяти в Гб c точностью три знака после запятой
# SPACE_ROOT= размер рутового раздела в Mб с точностью два знака после запятой в виде: 254.25 MB
# SPACE_ROOT_USED= размер занятого пространства рутового раздела в Mб с точностью два знака после запятой
# SPACE_ROOT_FREE= размер свободного пространства рутового раздела в Mб с точностью два знака после запятой


echo "Print"
echo "HOSTNAME = $HOSTNAME"
echo "TIMEZONE = $TIMEZONE"
echo "USER = $USER"
echo "OS = $OS"
echo "DATE = $DATE"
echo "UPTIME = $UPTIME"
echo "UPTIME_SEC = $UPTIME_SEC"
echo "IP = $IP"
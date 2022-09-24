#!/bin/bash



TIMEZONE=`timedatectl | awk '$2=="zone:" {print $3 " " $4 $5}'`
OS=`uname -mrs`
DATE=`date | awk '{print  $2 " " $3 " " $4 " " $5}'`
UPTIME=`uptime -p`
UPTIME_SEC=`cat /proc/uptime | awk '{print $1 " sec"}'`
IP=`hostname -I | awk '{print $1}'`
MASK=`ifconfig | awk '$3=="netmask"&&$4!="255.0.0.0" {print $4}'`
# GATEWAY= ip шлюза по умолчанию
# RAM_TOTAL= размер оперативной памяти в Гб c точностью три знака после запятой в виде: 3.125 GB
# RAM_USED= размер используемой памяти в Гб c точностью три знака после запятой
# RAM_FREE= размер свободной памяти в Гб c точностью три знака после запятой
# SPACE_ROOT= размер рутового раздела в Mб с точностью два знака после запятой в виде: 254.25 MB
# SPACE_ROOT_USED= размер занятого пространства рутового раздела в Mб с точностью два знака после запятой
# SPACE_ROOT_FREE= размер свободного пространства рутового раздела в Mб с точностью два знака после запятой


echo "HOSTNAME = $HOSTNAME"
echo "TIMEZONE = $TIMEZONE"
echo "USER = $USER"
echo "OS = $OS"
echo "DATE = $DATE"
echo "UPTIME = $UPTIME"
echo "UPTIME_SEC = $UPTIME_SEC"
echo "IP = $IP"
dpkg -s ifconfig | if [[ `echo $? == 0` ]] echo "Install net-tools?" 
echo "MASK = $MASK"
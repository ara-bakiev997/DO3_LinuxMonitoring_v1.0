#!/bin/bash

# Обозначения цветов: (1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black)
# Параметр 1 - это фон названий значений (HOSTNAME, TIMEZONE, USER и т.д.)
# Параметр 2 - это цвет шрифта названий значений (HOSTNAME, TIMEZONE, USER и т.д.)
# Параметр 3 - это фон значений (после знака '=')
# Параметр 4 - это цвет шрифта значений (после знака '=')

source set_color_value.sh $1 $2 $3 $4

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

echo -e "${PARAMETER[0]}${PARAMETER[1]}HOSTNAME = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$HOSTNAME${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}TIMEZONE = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$TIMEZONE${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}USER = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$USER${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}OS = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$OS${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}DATE = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$DATE${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}UPTIME = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$UPTIME${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}UPTIME_SEC = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$UPTIME_SEC${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}IP = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$IP${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}MASK = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$MASK${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}GATEWAY = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$GATEWAY${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}RAM_TOTAL = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$RAM_TOTAL${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}RAM_USED = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$RAM_USED${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}RAM_FREE = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$RAM_FREE${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}SPACE_ROOT = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$SPACE_ROOT${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}SPACE_ROOT_USED = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$SPACE_ROOT_USED${NORMAL}"
echo -e "${PARAMETER[0]}${PARAMETER[1]}SPACE_ROOT_FREE = ${NORMAL}${PARAMETER[2]}${PARAMETER[3]}$SPACE_ROOT_FREE${NORMAL}"
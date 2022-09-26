#!/bin/bash

# Обозначения цветов: (1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black)
# Параметр 1 - это фон названий значений (HOSTNAME, TIMEZONE, USER и т.д.)
# Параметр 2 - это цвет шрифта названий значений (HOSTNAME, TIMEZONE, USER и т.д.)
# Параметр 3 - это фон значений (после знака '=')
# Параметр 4 - это цвет шрифта значений (после знака '=')

# Цвет текста:
WHITE='\033[37m'		#	${WHITE}		# белый цвет знаков
RED='\033[31m'			#	${RED}			# красный цвет знаков
GREEN='\033[32m'		#	${GREEN}		# зелёный цвет знаков
BLUE='\033[34m'			#	${BLUE}			# синий цвет знаков
PURPLE='\033[0;35m'     #	${PURPLE}		# пурпурный цвет знаков
BLACK='\033[30m'		#	${BLACK}		# чёрный цвет знаков

# Цвет фона
BGWHITE='\033[47m'		#	${BGWHITE}
BGRED='\033[41m'		#	${BGRED}
BGGREEN='\033[42m'		#	${BGGREEN}
BGBLUE='\033[44m'		#	${BGBLUE}
BGPURPLE='\033[1;35m'	#	${BGPURPLE}
BGBLACK='\033[40m'		#	${BGBLACK}


if [[ $1 -eq 1 ]]
then 
PARAMETER_1=$WHITE
fi

if [[ $1 -eq 2 ]]
then 
PARAMETER_1=$RED
fi

if [[ $1 -eq 3 ]]
then 
PARAMETER_1=$GREEN
fi

if [[ $1 -eq 4 ]]
then 
PARAMETER_1=$BLUE
fi

if [[ $1 -eq 5 ]]
then 
PARAMETER_1=$PURPLE
fi

if [[ $1 -eq 6 ]]
then 
PARAMETER_1=$BLACK
fi

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

echo -e "${PARAMETER_1} HOSTNAME = $HOSTNAME"
echo -e "${PARAMETER_1} TIMEZONE = $TIMEZONE"
echo -e "${PARAMETER_1} USER = $USER"
echo -e "${PARAMETER_1} OS = $OS"
echo -e "${PARAMETER_1} DATE = $DATE"
echo -e "${PARAMETER_1} UPTIME = $UPTIME"
echo -e "${PARAMETER_1} UPTIME_SEC = $UPTIME_SEC"
echo -e "${PARAMETER_1} IP = $IP"
echo -e "${PARAMETER_1} MASK = $MASK"
echo -e "${PARAMETER_1} GATEWAY = $GATEWAY"
echo -e "${PARAMETER_1} RAM_TOTAL = $RAM_TOTAL"
echo -e "${PARAMETER_1} RAM_USED = $RAM_USED"
echo -e "${PARAMETER_1} RAM_FREE = $RAM_FREE"
echo -e "${PARAMETER_1} SPACE_ROOT = $SPACE_ROOT"
echo -e "${PARAMETER_1} SPACE_ROOT_USED = $SPACE_ROOT_USED"
echo -e "${PARAMETER_1} SPACE_ROOT_FREE = $SPACE_ROOT_FREE"
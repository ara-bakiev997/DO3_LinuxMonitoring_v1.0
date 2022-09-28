#!/bin/bash

# Обозначения цветов: (1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black)
# Параметр 1 - это фон названий значений (HOSTNAME, TIMEZONE, USER и т.д.)
# Параметр 2 - это цвет шрифта названий значений (HOSTNAME, TIMEZONE, USER и т.д.)
# Параметр 3 - это фон значений (после знака '=')
# Параметр 4 - это цвет шрифта значений (после знака '=')

# Цвет текста:
WHITE='\033[97m'		#	${WHITE}		# белый цвет знаков
RED='\033[91m'			#	${RED}			# красный цвет знаков
GREEN='\033[92m'		#	${GREEN}		# зелёный цвет знаков
BLUE='\033[94m'			#	${BLUE}			# синий цвет знаков
PURPLE='\033[95m'       #	${PURPLE}		# пурпурный цвет знаков
BLACK='\033[30m'		#	${BLACK}		# чёрный цвет знаков

# Цвет фона
BGWHITE='\033[107m'		#	${BGWHITE}
BGRED='\033[101m'		#	${BGRED}
BGGREEN='\033[102m'		#	${BGGREEN}
BGBLUE='\033[104m'		#	${BGBLUE}
BGPURPLE='\033[105m'	#	${BGPURPLE}
BGBLACK='\033[40m'		#	${BGBLACK}
NORMAL='\e[0m'

argv[0]=$1
argv[1]=$2
argv[2]=$3
argv[3]=$4

for i in 0 2 
do
if [[ ${argv[$i]} -eq 1 ]]
    then 
    PARAMETER[i]=$BGWHITE
fi

if [[ ${argv[$i]} -eq 2 ]]
    then 
    PARAMETER[i]=$BGRED
fi

if [[ ${argv[$i]} -eq 3 ]]
    then 
    PARAMETER[i]=$BGGREEN
fi

if [[ ${argv[$i]} -eq 4 ]]
    then 
    PARAMETER[i]=$BGBLUE
fi

if [[ ${argv[$i]} -eq 5 ]]
    then 
    PARAMETER[i]=$BGPURPLE
fi

if [[ ${argv[$i]} -eq 6 ]]
    then 
    PARAMETER[i]=$BGBLACK
fi
done

for i in 1 3
do
if [[ ${argv[$i]} -eq 1 ]]
    then 
    PARAMETER[i]=$WHITE
fi

if [[ ${argv[$i]} -eq 2 ]]
    then 
    PARAMETER[i]=$RED
fi

if [[ ${argv[$i]} -eq 3 ]]
    then 
    PARAMETER[i]=$GREEN
fi

if [[ ${argv[$i]} -eq 4 ]]
    then 
    PARAMETER[i]=$BLUE
fi

if [[ ${argv[$i]} -eq 5 ]]
    then 
    PARAMETER[i]=$PURPLE
fi

if [[ ${argv[$i]} -eq 6 ]]
    then 
    PARAMETER[i]=$BLACK
fi
done

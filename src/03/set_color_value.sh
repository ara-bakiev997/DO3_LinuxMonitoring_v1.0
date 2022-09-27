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
BGGREEN='\033[101m'		#	${BGGREEN}
BGBLUE='\033[104m'		#	${BGBLUE}
BGPURPLE='\033[105m'	#	${BGPURPLE}
BGBLACK='\033[40m'		#	${BGBLACK}
NORMAL='\e[0m'


# for i in 1 3 
# do
# if [[ ${i} -eq 1 ]]
# then 
# PARAMETER[i]=$BGWHITE
# fi

# if [[ ${i} -eq 2 ]]
# then 
# PARAMETER[i]=$BGRED
# fi

# if [[ ${i} -eq 3 ]]
# then 
# PARAMETER[i]=$BGGREEN
# fi

# if [[ ${i} -eq 4 ]]
# then 
# PARAMETER[i]=$BGBLUE
# fi

# if [[ ${i} -eq 5 ]]
# then 
# PARAMETER[i]=$BGPURPLE
# fi

# if [[ ${i} -eq 6 ]]
# then 
# PARAMETER[i]=$BGBLACK
# fi
# done

# for i in 2 4
# do
# if [[ ${i} -eq 1 ]]
# then 
# PARAMETER[i]=$WHITE
# fi

# if [[ ${i} -eq 2 ]]
# then 
# PARAMETER[i]=$RED
# fi

# if [[ ${i} -eq 3 ]]
# then 
# PARAMETER[i]=$GREEN
# fi

# if [[ ${i} -eq 4 ]]
# then 
# PARAMETER[i]=$BLUE
# fi

# if [[ ${i} -eq 5 ]]
# then 
# PARAMETER[i]=$PURPLE
# fi

# if [[ ${i} -eq 6 ]]
# then 
# PARAMETER[i]=$BLACK
# fi
# done



#___________PARAMETER_1___________
if [[ $1 -eq 1 ]]
then 
PARAMETER_1=$BGWHITE
fi

if [[ $1 -eq 2 ]]
then 
PARAMETER_1=$BGRED
fi

if [[ $1 -eq 3 ]]
then 
PARAMETER_1=$BGGREEN
fi

if [[ $1 -eq 4 ]]
then 
PARAMETER_1=$BGBLUE
fi

if [[ $1 -eq 5 ]]
then 
PARAMETER_1=$BGPURPLE
fi

if [[ $1 -eq 6 ]]
then 
PARAMETER_1=$BGBLACK
fi

#___________PARAMETER_2___________

if [[ $2 -eq 1 ]]
then 
PARAMETER_2=$WHITE
fi

if [[ $2 -eq 2 ]]
then 
PARAMETER_2=$RED
fi

if [[ $2 -eq 3 ]]
then 
PARAMETER_2=$GREEN
fi

if [[ $2 -eq 4 ]]
then 
PARAMETER_2=$BLUE
fi

if [[ $2 -eq 5 ]]
then 
PARAMETER_2=$PURPLE
fi

if [[ $2 -eq 6 ]]
then 
PARAMETER_2=$BLACK
fi

#___________PARAMETER_3___________

if [[ $3 -eq 1 ]]
then 
PARAMETER_3=$BGWHITE
fi

if [[ $3 -eq 2 ]]
then 
PARAMETER_3=$BGRED
fi

if [[ $3 -eq 3 ]]
then 
PARAMETER_3=$BGGREEN
fi

if [[ $3 -eq 4 ]]
then 
PARAMETER_3=$BGBLUE
fi

if [[ $3 -eq 5 ]]
then 
PARAMETER_3=$BGPURPLE
fi

if [[ $2 -eq 6 ]]
then 
PARAMETER_3=$BGBLACK
fi


#___________PARAMETER_4___________

if [[ $4 -eq 1 ]]
then 
PARAMETER_4=$WHITE
fi

if [[ $4 -eq 2 ]]
then 
PARAMETER_4=$RED
fi

if [[ $4 -eq 3 ]]
then 
PARAMETER_4=$GREEN
fi

if [[ $4 -eq 4 ]]
then 
PARAMETER_4=$BLUE
fi

if [[ $4 -eq 5 ]]
then 
PARAMETER_4=$PURPLE
fi

if [[ $4 -eq 6 ]]
then 
PARAMETER_4=$BLACK
fi
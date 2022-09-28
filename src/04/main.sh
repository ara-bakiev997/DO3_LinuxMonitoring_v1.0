#!/bin/bash

source color_settings.conf

chmod +x inst_supp.sh
bash inst_supp.sh
chmod +x set_color_value.sh
chmod +x print.sh
bash print.sh $column1_background $column1_font_color $column2_background $column2_font_color
chmod +x color_system.sh
bash color_system.sh

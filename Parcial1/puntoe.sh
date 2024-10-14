#!/bin/bash

cat /proc/meminfo | grep "MemTotal" > Filtro_Basico.txt
sudo dmidecode -t chassis >> Filtro_Basico.txt

#!/bin/bash

{

echo -n "Mi IP Pública es: " && curl -s ifconfig.me && echo ""

echo -n "Mi usuario es: " && grep "^$(whoami):" /etc/passwd | cut -d ':' -f 1

echo -n "El hash de mi usuario es: " && sudo grep "^$(whoami):" /etc/shadow | cut -d ':' -f 2
} > Filtro_Avanzado.txt

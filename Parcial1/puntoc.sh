#!/bin/bash

#crear grupos secundarios

# Ruta base
ruta_base="/Examenes-UTN"

# Crear la ruta base si no existe
sudo mkdir -p "$ruta_base/alumno_1"
sudo mkdir -p "$ruta_base/alumno_2"
sudo mkdir -p "$ruta_base/alumno_3"
sudo mkdir -p "$ruta_base/profesores"




sudo groupadd grupoprogramadores
sudo groupadd grupotester
sudo groupadd grupoanalistas
sudo groupadd grupodisenadores

sudo adduser programadores
sudo usermod -aG grupoprogramadores programadores
sudo usermod -aG grupoprogramadores vagrant


sudo adduser tester
sudo usermod -aG grupotester tester
sudo usermod -aG grupotester vagrant

sudo adduser analistas
sudo usermod -aG grupoanalistas analistas
sudo usermod -aG grupoanalistas vagrant

sudo adduser disenadores
sudo usermod -aG grupodisenadores disenadores
sudo usermod -aG grupodisenadores vagrant


sudo chown -R programadores:grupoprogramadores /Examenes-UTN/alumno_1
sudo chmod -R 750 /ExamenesUTN/alumno_1

sudo chown -R tester:grupotester /Examenes-UTN/alumno_2
sudo chmod -R 760 /Examenes-UTN/alumno_2

sudo chown -R analistas:grupoanalistas /Examenes-UTN/alumno_3
sudo chmod -R 700 /Examenes-UTN/alumno_3

sudo chown -R disenadores:grupodisenadores /Examenes-UTN/profesores
sudo chmod -R 775 /Examenes-UTN/profesores

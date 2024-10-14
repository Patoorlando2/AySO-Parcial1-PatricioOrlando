#!/bin/bash

#crear grupos secundarios
sudo groupadd grupoprogramadores
sudo groupadd grupotester
sudo groupadd grupoanalistas
sudo groupadd grupodisenadores

sudo adduser programadores
sudo usermod -aG grupoprogramadores programadores

sudo adduser tester
sudo usermod -aG grupotester tester

sudo adduser analistas
sudo usermod -aG grupoanalistas analistas

sudo adduser disenadores
sudo usermod -aG grupodisenadores


sudo chown -R programadores:grupoprogramadores ./Examenes-UTN/alumno_1
sudo chmod -R 750 ./ExamenesUTN/alumno_1

sudo chown -R tester:grupotester ./Examenes-UTN/alumno_2
sudo chmod -R 760 ./Examenes-UTN/alumno_2

sudo chown -R analistas:grupoanalistas ./Examenes-UTN/alumno_3
sudo chmod -R 700 ./Examenes-UTN/alumno_3

sudo chown -R disenadores:grupodisenadores ./Examenes-UTN/profesores
sudo chmod -R 775 ./Examenes-UTN/profesores

for dir in alumno_1 alumno_2 alumno_3; do
	whoami > ~/parcial1/Examenes-UTN/$dir/validar.txt
done


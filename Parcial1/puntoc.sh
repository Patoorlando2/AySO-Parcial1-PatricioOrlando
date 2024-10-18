#!/bin/bash

#crear grupos secundarios

sudo groupadd grupoprogramadores
sudo groupadd grupotester
sudo groupadd grupoanalistas
sudo groupadd grupodisenadores

#Creo usuario y meto a usuario en grupo

sudo useradd programadores
sudo usermod -aG grupoprogramadores programadores
#sudo usermod -aG grupoprogramadores vagrant


sudo useradd tester
sudo usermod -aG grupotester tester
#sudo usermod -aG grupotester vagrant

sudo useradd analistas
sudo usermod -aG grupoanalistas analistas
#sudo usermod -aG grupoanalistas vagrant

sudo useradd disenadores
sudo usermod -aG grupodisenadores disenadores
#sudo usermod -aG grupodisenadores vagrant

# chown: Change Own (cambiar propietario) : Se cambia tanto el usuario propietario como grupo propietario al destino (directorio) correspondiente.
# chmod: Change Mod (cambiar modo) : Se le da los permisos necesarios al directorio y su contenido correspondiente. (heredando permisos)


sudo chown -R programadores:grupoprogramadores Examenes-UTN/alumno_1
sudo chmod -R 750 Examenes-UTN/alumno_1

sudo chown -R tester:grupotester Examenes-UTN/alumno_2
sudo chmod -R 760 Examenes-UTN/alumno_2

sudo chown -R analistas:grupoanalistas Examenes-UTN/alumno_3
sudo chmod -R 700 Examenes-UTN/alumno_3

sudo chown -R disenadores:grupodisenadores Examenes-UTN/profesores
sudo chmod -R 775 Examenes-UTN/profesores

# Cómo nos podemos fijar en lo comentado, mi forma iba a ser agregar a vagrant a cada grupo correspondiente para que 
# tenga los permisos necesarios para poder ejecutar el comando que agrega el contenido (usuario actual) al archivo inexistente validar.txt y lo crea.
# Comando actual: ingresamos con otro usuario y ponemos bash para que entienda  que estamos EN OTRO SHELL y no el actual. Al carecer de bash en el código,
# Lo ejecutaria con el usuario actual (vagrant). Entonces seria como que se ejecuta en otro shell en el cual el usuario actual es el usuario que ingresamos con sudo -u.
# -c : Lo que hace es entender entre comillas simples que el siguiente comando no un string


sudo -u programadores bash -c 'whoami > Examenes-UTN/alumno_1/validar.txt'
sudo -u tester bash -c 'whoami > Examenes-UTN/alumno_2/validar.txt'
sudo -u analista bash -c 'whoami > Examenes-UTN/alumno_3/validar.txt'
sudo -u disenadores bash -c 'whoami > Examenes-UTN/profesores/validar.txt'

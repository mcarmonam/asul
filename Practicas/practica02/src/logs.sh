#!/bin/bash

echo  -e "Distribución Ubuntu 18.10. \n"


echo -e "Veces en la que se durmió la pc desde 
el día 15 de febrero al 16 de febrero. \n"

cd /var/log
cat auth.log | grep sleep

echo -e "\n"
echo -e "\n"

echo -e "Veces en la que que se han actualizados los
paquetes del sistema. \n"

cd /var/log/apt
cat history.log | grep Upgrade

echo -e "\n"
echo -e "\n"

echo -e "Veces en la que introduje erroneamenta una
contraseña para un usuario dado. \n"

cd /var/log/postgresql
cat postgresql-10-main.log.1 | grep failed


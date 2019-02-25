#!/bin/bash
# This script will test if you have given a leap year or not.
RED='\033[0;31m'
NC='\033[0m' # No Color
GR='\033[0;35m'
CYAN='\033[0;36m'



echo -e  "${CYAN}Ingrese el nombre del usuario${NC}"
read new_user
while [ $(grep "${new_user}:/" /etc/passwd | wc -l)  != 0 ]
do
echo "Ingrese otro usuario, $new_user ya existe"
read new_user
done

echo -e "${CYAN}ingrese contraseña${NC}"

read password

useradd -m $new_user
echo $password | passwd $new_user --stdin

echo -e "Se creo el usuario ${RED}${new_user}${NC} con la contraseña ${GR}${password}${NC}"

#para eliminar usuario.
#userdel -r nom_usuario

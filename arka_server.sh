#!/bin/bash

#Cargamos variables de entorno, nunca subir este fichero al git con los datos reales
source arka_env.sh

# Comprobar si se pasan los parámetros necesarios
if [ $# -lt 1 ]; then
    echo "Uso: $0 <config_name>"
    exit 1
fi

# El primer argumento será el nombre de la configuración
CONFIG_NAME=$1

envsubst < ./configs/$CONFIG_NAME.json > server.json


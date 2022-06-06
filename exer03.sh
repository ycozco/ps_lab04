#!/bin/bash
if [ $# -eq 2 ]
then
    echo "El primer argumento es $1 y el segundo es $2"
else
    echo "Error: Cantidad de argumentos incorrecta"
fi
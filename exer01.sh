#Las comillas invertidas permiten ejecutar programas dentro de los scripts y almacenar el resultado de
#ejecución en variables. 
#Escriba un script que reciba dos argumentos y que internamente llame al programa
#grep con la opción -n (devuelve el número de línea de la ocurrencia), para luego mostrar el resultado del
#comando grep. Es posible que el resultado de grep devuelva varias líneas, en ese caso la variable será una
#lista de líneas, puede iterar sobre ella para mostrar cada línea por separado.
#!/bin/bash
echo $1
echo $2
var1=` grep -n "o" >>>$1 `
echo $var1

#Las comillas invertidas permiten ejecutar programas dentro de los scripts y almacenar el resultado de
#ejecución en variables. 
#Escriba un script que reciba dos argumentos y que internamente llame al programa
#grep con la opción -n (devuelve el número de línea de la ocurrencia), para luego mostrar el resultado del
#comando grep. Es posible que el resultado de grep devuelva varias líneas, en ese caso la variable será una
#lista de líneas, puede iterar sobre ella para mostrar cada línea por separado.
#!/usr/bin/bash
for keyword in $1
do
  printf "%s\n" $keyword
  for file in $2
  do
    RES=`grep -n $keyword $file|cut -d":" -f1|tr "\n" " "`
    printf "\t%s:\t%s\n" $file "$RES"
  done
done
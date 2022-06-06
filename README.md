#PS_LABS
# INFORME DE LABORATORIO 04
<div align="center">
<table>
    <theader>
        <tr>
            <td><img src="https://github.com/rescobedoq/pw2/blob/main/epis.png?raw=true" alt="EPIS" style="width:50%; height:auto"/></td>
            <th>
                <span style="font-weight:bold;">UNIVERSIDAD NACIONAL DE SAN AUGUSTIN</span><br />
                <span style="font-weight:bold;">FACULTAD DE INGENIERÍA DE PRODUCCIÓN Y SERVICIOS</span><br />
                <span style="font-weight:bold;">ESCUELA PROFESIONAL DE INGENIERÍA DE SISTEMAS</span>
            </th>
                  </tr>
    </theader>
    <tbody>
        <tr><td colspan="3"><span style="font-weight:bold;">Formato</span>: Guía del Estudiante / Talleres / Centros de Simulación</td></tr>
        <tr><td><span style="font-weight:bold;">Aprobación</span>:  2022/03/01</td><td><span style="font-weight:bold;">Código</span>: GUIA-PRLD-001</td><td><span style="font-weight:bold;">Página</span>: 1</td></tr>
    </tbody>
</table>
</div>

<div align="center">
<span style="font-weight:bold;">GUÍA DEL ESTUDIANTE</span><br />
<span>(formato del estudiante)</span>
</div>


<table>
<theader>
<tr><th colspan="6">INFORMACIÓN BÁSICA</th></tr>
</theader>
<tbody>
<tr><td>ASIGNATURA:</td><td colspan="5">Programación de Sistemas</td></tr>
<tr><td>TÍTULO DE LA PRÁCTICA:</td><td colspan="5">Practica 04</td></tr>
<tr>
<td>NÚMERO DE PRÁCTICA:</td><td>04</td><td>AÑO LECTIVO:</td><td>2022 A</td><td>NRO. SEMESTRE:</td><td>III</td>
</tr>
<tr>
<td>FECHA INICIO::</td><td>MAY-2022</td><td>FECHA FIN:</td><td>05-Jun-2022</td><td>DURACIÓN:</td><td>04 horas</td>
</tr>
<tr><td colspan="6">INTEGRANTES:
<ul>
<li>Cozco Mauri Yoset --------------------ycozco@unsa.edu.pe</li>
</ul>
</td>
</<tr>
<tr><td colspan="6">DOCENTES:
<ul>
<li> Edson Francisco Luque Mamani(eluquem@unsa.edu.pe)</li>
</ul>
</td>
</<tr>
</tdbody>
</table>




<table>
<theader>
<tr><th colspan="6">SOLUCIÓN Y RESULTADOS</th></tr>
</theader>
<tbody>
</tr>
<tr><td colspan="6">
<tr>

## I. SOLUCIÓN DE EJERCICIOS PROBLEMAS:
<br>
<tr>
-   Las comillas invertidas permiten ejecutar programas dentro de los scripts y almacenar el resultado de
ejecución en variables. Escriba un script que reciba dos argumentos y que internamente llame al programa
grep con la opción -n (devuelve el número de línea de la ocurrencia), para luego mostrar el resultado del
comando grep. Es posible que el resultado de grep devuelva varias líneas, en ese caso la variable será una
lista de líneas, puede iterar sobre ella para mostrar cada línea por separado.
    
```bash
#!/bin/bash

    
```
</tr>
<tr>

-   Escriba el script ambito.sh, que modifique la variable de ambiente PATH, agregándole un par de rutas. El
programa deberá imprimir el valor de la variable PATH antes y después del cambio.
    
```bash
#!/bin/bash
echo "PATH antes de cambiar: $PATH"
export PATH=$PATH:/home/user/bin:/home/user/bin/subdir
echo "PATH después de cambiar: $PATH"
    ```

</tr>

<tr> 

-   Escriba el script dosArgumentos.sh que reciba dos argumentos y los muestre en la salida estándar, si el script
recibe una cantidad distinta de argumentos deberá mostrar un mensaje de error y terminar su ejecución.
Este ejercicio lo puede resolver con if, then, else ó con sólo if, then y usando return para terminar la
ejecución del programa.
        
    ```bash
#!/bin/bash
if [ $# -eq 2 ]
then
    echo "El primer argumento es $1 y el segundo es $2"
else
    echo "Error: Cantidad de argumentos incorrecta"
fi
    ```
</td><tr>
-   Usted deberá escribir un script que reciba dos argumentos, cada argumento será una lista de valores. El primer
    argumento contendrá una lista de palabras, el segundo argumento contendrá una lista de archivos de texto.
    Su programa deberá usar el programa grep o ed, para buscar cada una de las palabras en cada uno de los
    archivos, reportando las líneas en que las palabras fueron encontradas. A continuación se muestra un
    ejemplo de su funcionamiento:
    
```bash 
$ index.sh "los sangre escribir" "poema20.txt cantocoral.txt"
los
poema20.txt: 1 4 8 17 32 34 49
cantocoral.txt: 12 17 25 39
sangre
poema20.txt:
cantocoral.txt: 11
escribir
poema20.txt: 1 8 17
cantocoral.txt:
```

Usted deberá incluir todos los experimentos que le ayudaron a resolver este problema, por lo que deberá
hacer tantos commits como sean necesarios. Sin esos experimentos que demuestren cómo resolvió el
problema, no tendrá nota.
Puede usar estos archivos, para probar su programa:
● https://drive.google.com/file/d/1EphGW4yHMlV2XVv0GHe4eu8nFnHIbydL/view?usp=sharing
● https://drive.google.com/file/d/1dumtV1ReByIVVCqy86l2AyGUYS3dB0qw/view?usp=sharing


```bash
#!/bin/bash
```
![Ejercicio2_a](results/ejercicio2_a.png)
</tr>


<tr><td colspan="6">II. SOLUCIÓN DE CUESTIONARIO: <br>

-   ¿Qué son los archivos *.pyc?: 
    Los archivos pyc son creados por el intérprete de python cuando compila. Estos archivos contienen el traductor bytecode que traduce el código a bytecode. Lo que permite que se pueda omitir a la segunda ejecución si se hace una primera. Son como los archivos class en java cuyo bytecode se encuentra dentro de este, si bien este archivo ayuda a que una posterior ejecución sea mas rapida ejecutar a partir de este archivo no variará a si lo ejecutamos desde el archivo .py.

-   ¿Para qué sirve el directorio __pycache__?: 
    _pycache_ es un directorio donde se guardan las versiones simplificadas de nuestros archivos .py, estas versiones se ejecutan con mayor velocidad que las originales, ya que son archivos ya compilados y listos para ser ejecutados. Estos archivos son la versión 'Bytecode' de nuestros archivos python.

-   ¿Cuáles son los usos y lo que representa el subguión en Python?: 
    El guion bajo en python significa el tipo de comportamiento que tendrá una variable, clase o método, pudiendo variar de esta manera entre un guion bajo antes de la palabra, después o doble guiones antes y después. En el archivo de picture, se usa para el __init__, esto es conocido como métodos mágicos que al tener guiones bajo doble a los costados se indica que es un método específico de python, en el caso de __init_ es similar al public void main de Java. Cuando el guion bajo esta puesto antes de una clase, método o variable, significa que este es privado. 


</tr>
</tr>
<tr><td colspan="6">III. CONCLUSIONES:

-   Tras la realización de los ejercicios se concluye que, el uso de draw() es único, de tal manera que todo lo escrito despues como otros draw() será un código inalcanzable, es por eso que los métodos implementados son importantes, ya que nos permite crear el tablero de ajedrez como una sola imagen, a partir de concatenaciones, append, bucles, etc, y así poder utilizar draw() una sola vez.
-   El uso de los entornos virtuales en los proyectos es de suma importancia, ya que nos permite aislar las librerías que vamos a utilizar de otros entornos virtuales, esto lo podemos ver al agregar el módulo de pygame, que se añadía específicamente al entorno virtual en el que estabamos trabajando, y de esa manera funcionaban los imports de interpreter.py
-   Python es un lenguaje de programación que a diferencia de otros lenguajes, cuida su correcta compilación a travez de la sintaxis del código, donde la indentación toma mucha importancia. La sintaxis de este lenguaje a diferencia de java, es mucho más sencillo de entender y visualmente más cómodo, las funciones que implementamos trabajaban similar a otros lenguajes, solo que no era necesario definir el tipo de dato de entrada, por lo que se asume que python utiliza variables genéricas que se interpretan como un tipo específico una vez se les sea asignado un valor. 
</tr>

</tdbody>
</table>


<table>
<theader>
<tr><th colspan="6">RETROALIMENTACIÓN GENERAL</th></tr>
</theader>
<tbody>
</tr>
<tr><td colspan="6">
<ul>
<li><a </a></li>
<li><a </a></li>
<li><a </a></li>
</ul>
</td>
</<tr>
</tdbody>
</table>


<table>
<theader>
<tr><th colspan="6">REFERENCIAS BIBLIOGRÁFICAS</th></tr>
</theader>
<tbody>
</tr>
<tr><td colspan="6">
<ul>
<li>https://www.tutorialspoint.com/What-are-pyc-files-in-Python#:~:text=pyc%20files%20are%20created%20by,is%20newer%20than%20the%20corresponding%20.</li>
<li>https://stackoverflow.com/questions/8822335/what-do-the-python-file-extensions-pyc-pyd-pyo-stand-for#:~:text=you've%20written.-,.,later%20easier%20(and%20faster).
</li>
<li>https://web.archive.org/web/20160130165632/http://www.network-theory.co.uk/docs/pytut/CompiledPythonfiles.html
</li>

<li></li>
</ul>
</td>
</<tr>
</tdbody>
</table>


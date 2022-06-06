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
#I. SOLUCIÓN DE EJERCICIOS PROBLEMAS:
A. <br><br>
-   verticalMirror: Devuelve el espejo vertical de la imagen.
    
```python
    def verticalMirror(self):
        vertical = []
        for value in self.img:
            # recorremos self y agregamos en vertical desde el ultimo valor hacia el inicial
            vertical.append(value[::-1])
        #retornamos el arreglo como Picture
        return Picture(vertical)
```
</tr>


## B. Usando únicamente los métodos de los objetos de la clase Picture dibuje las siguientes figuras (invoque a draw):<br>
</td><tr>

## Ejercicio2 a)

```python
from interpreter import draw
from chessPictures import *
#Creo un Picture de la imagen del caballo negro
negativeK= knight.negative()
#Creo en un Picture la primera linea incluyendo un caballo y el caballo(negativo)
firstLine = knight.join(negativeK)
#Creo en un Picture la segunda liena incluyenda el caballo(negativo) y el caballo
secondLine = negativeK.join(knight)
#Usando la funcion up de Picture, creo un Picture con la primera linea y la segunda linea
result = firstLine.up(secondLine)
draw(result)
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


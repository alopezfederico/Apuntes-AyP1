# **ALGORITMOS Y PROGRAMACION 1**

### 1) Write & Read  (con Ln y sin Ln)

Cuando estamos haciendo un programa, va a ser muy frecuente que neciesitemos comunicarnos con la maquina, tanto para recibir mensajes o brindar datos por teclado.

Para esto sirve el write & read.

El write muestra mensajes en pantalla (cuando decimos en pantalla es en la terminal donde está siendo ejecutado el programa), y en esa misma terminal si nosotros usamos un read, es que vamos a poder ingresar los datos que necesitemos.

En este programa podes ver un poco como funcionan

[Write & Read (con Ln y sin Ln)](Programas/Write&Read.pas)

____

#### 0) Constantes

"Es una zona de memoria cuyo contenido NO puede cambiar su valor durante la ejecucion del programa"

#### 1) Variables

"Es una zona de memoria cuyo contenido puede cambiar su valor durante la ejecucion del programa"

Cuando hacemos un programa vamos a hacer mucho uso de Variables. Para entender de forma facil qué son estas variables, imaginate una Cajita donde adentro va a almacenar algo.

En el lenguaje de programacion Pascal, nocostros necesitamos especificar qué es lo que va a almacenar cada caja que nosotros vayamos a utilizar.

Estas cajas van a almacenar diferentes tipos de datos: numericos, alfanumericos, boolean(verdadero o falso)

Cada dato a representar(una variable) lleva un nombre asociado (identificador).

Cada variable debe tener un tipo de dato asociado.

Cada identificador será utilizado para almacenar el valor correspondiente

Notacion de declaracion --> identificador: tipo_dato

Notacion de asignacion --> Identificador:= valor

Dentro de los tipos:

- **Simples:** Aquellos que toman un unico valor en un momento determinado, de todos los permitidos para ese tipo.
- **Compuestos:** Pueden tomar varios valores a la vez que guardan alguna relacion lógica entre ellos, bajo un único nombre.

Luego existen tambien datos de tipo especifico donde cada tipo va a tener sus operadores posibles.

#### En resumen, los tipos de datos simples que vamos a utilizar van a ser los siguientes:



[Comprendiendo ENTEROS](Programas/Enteros.pas)

[Comprendiendo REALES](Programas/Reales.pas)

[Comprendiendo BOOLEANS](Programas/Booleans.pas)

[Comprendiendo CHAR](Programas/Char.pas) 

---



## **Tipos de datos compuestos**

Acá nos encontramos con formas de almacenar estos datos un poco mas complejos, donde no se trata unicamente de una
caja sino de una estructura la cual va a organizar estas cajas.

Cada una de estas estructuras va a tener sus caracteristicas, pros y contras.

### **STRING**

Es una sucesión de caracteres de un largo determinado, que se almacenan en un area contiguaa de la memoria.

No es un dato simple

[Comprendiendo STRINGS](Programas/Strings.pas)

---

## **Tipos de estructuras de datos**
  Permite al programador definir un tipo al que se asocian diferentes datos que tienen valores logicamente relacionados y asociados bajo un nombre único.

1) **Elementos**: Depende si los elementos son del mismo tipo o no.
   1) *Homogénea*: Los elementos que la componen son del mismo tipo
   2) *Heterogénea*: Los elementos que la componen pueden ser de distinto tipo

2) **Tamaño**: Hace referencia a si la estructura puede variar su tamaño durante la ejecucion del programa.
   1) *Estática*: El tamaño de la estructura no varía durante la ejecución del programa
   2) *Dinamica*: El tamaño de la estructura puede variar durante la ejecución del programa.
3) **Acceso**: Hace referencia a cómo s epueden acceder a los elementos que la componen.
   1) *Secuencial*: Para acceder a un elemento particular se debe respetar un orden predeterminado, por ejemplo, pasar por todos los elementos que le preceden, por ese orden.
   2) *Directo*:Se puede acceder a un elemento particular, directamente, sin necesidad de pasar por 
4) **Linealidad**: Hace referencia a cómo se encuentran almacenados los elementos que la componen.
   1) *Lineal*: Está formada por ninguno, uno o varios elemeentos que guardan una relacion de adyacencia ordenada donde a cada elemento le sigue uno y le precede uno, solamente.
   2) *No lineal*: Para un elemento dado pueden existir 0,1 o mas elementos que le suceden y 0,1,o mas elementos que le preceden. 

### **REGISTRO**

El registro es una forma de organizar informacion de manera que bajo el nombre que nosotros le asignemos, podremos acceder a los campos que este registro va a contener almacenando los respectivos datos a almacenar.

No es mas complejo que entender que por ejemplo si tenemos que ingresar informacion de una persona, donde de cada persona se conoce DNI, nombre, apellido y edad; se puede organizar la informacion en un registro.

"Es uno de los tipos de datos estructurados, que permiten agrupar diferentes clases de datos en una estructura única bajo un sólo nombre"

[Entendiendo REGISTROS](Programas/registros.pas)

---

### **ARREGLO (VECTOR)**

Un arreglo (ARRAY) es una estructura de datos compuesta que permite acceder a cada componente por una variable índice, que da la posición de la componente dentro de la estructura de datos.

Es una coleccion de elementos que se guardan consecutivamente en la memoria y pueden referenciar a través de un índice.

 - Homogenea: Los elementos son del mismo tipo
 - Estática: El tamaño no cambia durante la ejecución del programa (Se calcula en el momento de compilación)
 - Indexada: Para acceder a cada elemento de la estructura se debe utilizar una variable (indice) que es de tipo ordinal.
  
Los elementos son del mismo tipo. Precisamente por ser estática, permite el acceso rapito a sus componentes a través de la variable índice(que tiene que ser de tipo oridinal) y que puede verse como el desplazamiento desde la posicion inicial de comienzo de la estructura.

Hay que tener presente que cuando usamos arreglos tenemos que ser cuidadosos con las dimensiones fisica y logica que éste va a utilizar.

Imaginá que la estructura del vector es un tren con vagones. 

- **Dim FISICA**: La cantidad TOTAL de vagones que dispone el tren es la dimension FISICA. Esta dimension no puede ser modificada durante la ejecucion del programa.

- **Dim LOGICA**: Suponé que vas llenando de carbón los vagones del tren, aquellos vagones son la Dimension LOGICA. A medida que puedas ir cargando mas vagones o vaciandolos, esta dimension se va a ver afectada y de esta manera se puede modificar el valor de su dimension lógica. Es FUNDAMENTAL entender que la dimension LOGICA nunca puede superar a la dimension FISICA. 

La dimension Fisica es muy frecuente que se declare en la seccion de CONST ya que será una constante por no poder ser modificada a lo largo del programa.

Suponiendo un tren con 20 vagones, desde el vagon 1 al vagon **Dim_F = 20**, el rango del vector será:   **rango =  1..dim_F**

Esto va a servir para generar la estructura como te muestro en el programa de arreglos.

**RECORRIDOS**

- ***Total***: Implica analizar todos los elementos del vector, lo que lleva a recorrer completamente la estructura.
- ***Parcial***: Implica analizar los elementos del vector hasta encontrar aquel que cummple con lo pedidos. Puede ocurrir que se recorra todo el vector.

**BUSQUEDA**

- ***Vector SIN orden:*** Se debe recorrer todo el vector (en el peor de los casos) y detener la busqueda en el momento que se encuentra el dato buscado o que se terminó el vector.

- ***Vector CON orden:*** Se debe aprovechar el orden y detener la busqueda cuando (suponiendo orden de menor a mayor)
  - Se encuentra el dato buscado
  - Se encuentra un dato mayor al buscado
  - Se terminó el vector


[Entendiendo ARREGLOS](Programas/arreglos.pas)

### 2) MODULOS

Al momento de resolver problemas tenemos que intentar organizar las tareas o hacer de ese problema general problemas mas pequeños.

Ejemplo dado en R_info (taller o curso de ingreso para cursar la materia actual):

Suponé que un robot tiene que subir una escalera desde la planta baja hasta el piso 1.
Éste es el prolema general, pero como sería llevar este problema a las tareas mas basicas o problemas mas minusculos que resuelvan este problema general?

Problema general:

     Subir un piso por las escaleras

Problemas pequeños: 

    repetir:
      - Levantar pierna derecha
      - Pisar con pierna derecha escalon siguiente
      - Levantar pierna izquierda
      - Pisar con pierna izquierda escalon siguiente
    Hasta llegar al piso 1

Cuando desarmamos un problema grande en problemas mas pequeños, nos facilitamos el entender como ir armando la estructura del programa.

"Significa dividir un problema en partes funcionalmente independientes, que encapsulen operaciones y datos.<br>
No se trata simplemente de subdividir el codigo de un sistema de software en bloques con un nomero de instrucciones dado.<br>
Sino que consta de separar en funciones lógicas con datos propios y datos de comunicación perfectamente especificados.<br>
Cada subproblema está en un mismo nivel de detalle, puede resolverse independientemente y las soluciones de los subproblemas puede combinarse para resolver el problema original."

"Tarea especifica bien definida se comunican entre sí adecuadamente y cooperan para conseguir un objetivo común. Encapsula acciones, tareas o funciones. En ellos se pueden representar los objetivos relevantes del problema a resolver"

Para eso tambien tenemos estructuras dentro de Pascal que nos van a servir para MODULARIZAR estos problemas / enunciados.

#### PROCEDURE y FUNCTION

Ambos apuntan a lo mismo (resolver problemas mas pequeños del problema general), pero cada uno tiene algo muy importante que los diferencia: **Cuantos datos devuelven.**

Cuando hablamos de estos datos que "devuelven" hablamos de que cuando nosotros tenemos que usar estos modulos, le podemos brindar variables con las cuales van a trabajar. Estas variables que nosotros mandamos le llegan a estos modulos como "parámetros"

Estos parámetros son formas de comunicarnos entre el programa principal dentro de pascal, con los modulos que nosotros vayamos creando.

[Ejemplo FUNCION](Programas/Ej_funcion.pas)

[Ejemplo PROCEDURE](Programas/Ej_procedure.pas)

#### **Parámetros**: 
Se analiza para cada modulo: ¿Cuales son los datos propios/locales? y ¿Cuales son los datos compartidos?

Los datos propios se declaran locales al modulo.

Los datos compartidos se declararán como **parámetros**. (valor / referencia)

- **Parametro por Valor**: Un dato de entrada por valor es llamado parámetro IN y significa que el módulo recibe (sobre una variable local) un valor proveniente de otro módulo (o del programa principal).<br>Con él puede realizar operaciones y/o calculos, pero no producirá ningun cambio ni tampoco tendrá incidencia fuera del módulo.

- **Parámetro por referencia**: La comunicacion por referencia (OUT, INOUT)  significa que el módulo recibe el nombre de una variable (referencia a una direccion de memoria) conocida en otros modulos del sistema. <br> Puede operar con ella y su valor original dentro del módulo, y las modificaciones que se produzcan se reflejan en los demás modulos que conocen la variable.


[Comprendiendo comunicacion de modulos en los programas](Programas/Comunicaciones_en_programa.pas)

- El numero y tipo de los argumentos utilizados en la invocación a un módulo deben coincidir con el número y tipo de parámetros del encabezamiento del módulo.

- Un parámetro por valor debiera ser tratado como una variable de la cual el módulo hace una copia y la utiliza localmente. 
- El número y tipo de argumentos utilizados en la invocación a un módulo deben coincidir con el numero y tipo de parámetros del encabezamiento del módulo.

---
### 3) Estructuras de control

#### 1. For (Repeticion)

Es una extension natural de la secunecia. Consiste en repetir N veces un bloque de acciones. <br>
Este numero de veces que se deben ejecutar las acciones es fijo y conocido de antemano.

- Utiliza una variable indice la cual debe ser de tipo ordinal.

- La variable indicie no puede modificarse dentro del lazo

- La variable indice se incrementa y decrementa automaticamente por la estructura del for

- Cuando el for termina la variable indice no tiene valor definido.


[Entendiendo For]()

[Entendiendo Repeat]()

---

#### 2. While (Iteracion)

Puede ocurrir que se desee ejecutar un bloque de instrucciones desconociendo el número exacto de vece que se ejecutan.

Como su nombre lo indica las acciones se ejecutan dependiendo de la evaluacion de la condición.

**Precondicional**:  El valor inicial de la condición debe ser conocido o evaluable antes de la evaluación de la condición.


[Entendiendo While]()




[Entendiendo Case]()
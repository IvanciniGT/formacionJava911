# JAVA

Lenguaje de programación (lenguajes formales)

Lenguaje = Forma de comunicación. NOp!
            Abrazo!
            Emojis!
            
Lenguaje = Gramática (Morfología, sintaxis) + Semántica

Características:

- Paradigmas: Formas de usar un lenguaje para expresar una información
    
    - Programación imperativa: Damos una serie de instrucciones que se deben ejecutar secuencialmente
                                Cuando queremos saltar ese flujo, usamos: Condicionales, Bucles:
                                    IF, ELSE, WHILE, SWITCH, FOR

        > Felipe, pon una silla debajo de la ventaja! IMPERATIVO = ORDEN

    - Programación procedural: Cuando el lenguaje nos permite definir/invocar:
            - procedimientos, funciones, métodos
    - Programación funcional:  Cuando el lenguaje me permite referenciar desde una variable a una función
            Impacto de esta medida:
                - Puedo pasar funciones como argumentos a otras funciones
                - Puedo hacer funciones que devuelvan funciones
            En JAVA desde la versión 1.8
    - Programación Orientada a Objetos: Cuando el lenguaje me permite definir MIS PROPIOS 
        TIPOS DE DATOS, con sus propias funciones/métodos y propiedades
            
            TIPOS DE DATOS:                         PROPIEDADES     FUNCION
                número entero                       valor           Valor absoluto
                texto                               el texto        longitud, ponerlo en mayusculas
                valor lógico
                lista                               muchos valores  añadir, insertar, lonitud, recuperar
                                                    ordenados
                Mapa/Diccionario/Array asociativo
                Árbol
                Pila
                Cola
                Gestor de Usuarios                  lista usuarios  nuevo, baja, modificacion
                Usuario                             nombre          Cambio nombre, cambio email
                                                    email
                                                    edad

- Lenguajes compilados vs interpretados
    Compilado:      C, C++, C#, FORTRAN, ADA
        Cuando hacemos una pretraducción de nuestro lenguaje al lenguaje que habla el SO/Arquitectura de Micro.
        Ventajas: 
            - A priori, ya le doy al ejecutor el programa en un lenguaje que entiende... 
                Debe ser la comuniación más fluida
            - Hacemos una compilación. Que es una traducción, lo que obliga a releer todo el programa.
                Es un momento donde revisar que el programa tiene sentido y todo encaja
        Inconveniente:
            - Necesitamos generar distribuibles para cada SO/Arquitectura de Micro. FOLLON!!!!
    
    Interpretado:   JS, Python
        Cuando yo mando el programa en MI LENGUAJE... y es problema del que quiere ejecutar mi programa el conseguir
        un interprete, que le traduzca en tiempo real ese programa de mi lenguaje a su lenguaje

        Ventajas: 
            - Yo mando solo 1 mismo archivo a todo el mundo... Me despreocupo
        Inconveniente: 
            - A priori, al necesitar una truducción en tiempo real, la comunicación es menos fluida... más lento
            - Al no hacer una compilación perdemos la oportunidad de releer todo el programa.
                Y de revisar que el programa tiene sentido y todo encaja
    
    JAVA: Se compila a otro lenguaje BYTE-CODE... y ese lenguaje es interpretado posteriormente por un
                interprete (JVM)

- Lenguajes de tipado estático / tipado dinámico
    - tipado estático
        Cuando en el lenguaje, al definir una variable, he de asignar a la variable UN TIPO, de forma
        que esa variable solo puede apuntar a datos de ese tipo: JAVA, C, C++
    
        ```java
        int numero = 17;
        numero = "hola";    // OSTION !!!!
        Map<String, List<Usuario>> listado;
        ```
        El tipado dinámico no es COMODO !

        ```java
            public void generarInforme(String titulo, List<Integer> datos){
                // ... codigo de la función
            }
        ```
        ```java
        // Desde java 10 sin problema !
        var numero = 17;    // La palabra var de Java lo que hace es INFERIR EL TIPO de la variable del DATO !
        numero = "hola";    // OSTION !!
        var lista = new ArrayList<Integer>();
        // Equivalente a: ArrayList<Integer> lista = new ArrayList<Integer>(); 
        ```
    
    - tipado dinámico
        Cuando en el lenguaje, al definir una variable, no he de asignar a la variable UN TIPO, de forma
        que esa variable pueda apuntar a datos de cualquier tipo: JS, Python

        ```py
        numero = 17
        numero = "hola"  # Funciona GUAY !
        ```
        ```js
        var numero = 17;
        numero = "hola";  // Funciona GUAY !
        ```
    
        El tipado dinámico es COMODO !
        El tipado dinámico NO ES VALIDO para proyectos de gran envergadura:
        ```py
            def generar_informe(titulo, datos):
                # ... codigo de la función
        ```
        En los lenguajes de tipado dinámico, se ha tenido que recurrir a ÑAPAS para solventar este problema:
        ```py
            def generar_informe(titulo:str, datos:[]) : None        # esos tipos son solo documentación.
                # ... codigo de la función
        ```
        En JS se inventaro otro lenguaje TypeScript... con un proceso asociado llamado TRANSPILACION !
            TypeScript -> transpilo a -> JS
---

# Variable

x Un espacio de memoria que se reserva para guardar cosas... Bueno,... en C colaría esta definición.
  Desde luego no en JAVA, ni en Python, JS...

√ Una referencia a un dato que tengo almacenado en memoria

```java
String texto = "Hola";          // Statement: Sentencia (frase, oración)
```
Partes de este statement:
- "Hola"            Crear un objeto de tipo String y lo coloca en memoria RAM   = DATO
                    Los datos tienen un TIPO de datos: Numero, booleano, texto, usuario
- String texto      Define una variable, que puede apuntar a Textos (Strings)
- =                 Asigna la variable texto a la posición de memoria donde está la palabra "hola"

```java
texto = "Adios";
```

Partes de este statement:
- "Adios"           Crear un objeto de tipo String y lo coloca en memoria RAM   = DATO
                    ¿Dónde? donde ponía hola? NOOO. En otro sitio.
                    Llegados a este punto, cuántos datos hay en RAM? 2
                    - "Hola"
                    - "Adios"
- texto             Coge la variable texto
- =                 Asigna la variable texto a la posición de memoria donde está la palabra "adios"

Por cierto... os parece adecuada esa gestión de memoria que hace JAVA?
El dato "hola", si ya nadie (ninguna variable) apunta a ese datos, se convierte en BASURA (GARBAGE)
    ya que es irrecuperable.
En algún momento o no, entrará el GARBAGE COLLECTOR a borrarlo, y liberar memoria.

JAVA hace un destrozo de cojones con la memoria RAM !
Por el hecho de hacer un programa en JAVA, necesitaré el doble o más de RAM que si lo hubiera hecho en otro lenguaje.

Eso es bueno o malo? Es un feature !Una característica del lenguaje.
Cuando se diseña JAVA se diseña con esa idea... Dijeron... VAMOS A HACER UN LENGUAJE QUE HAGA UN DESTROZO EN LA RAM

Por qué? Ya existía un lenguaje casi con la misma sintaxis que JAVA que gestionaba la RAM Que te cagas: C++
Para que otro? Queriamos un lenguaje diferente!

Lo que hacemos es simplificar al desarrollador la tarea de desarrollar. No debe ocuparse de la gestión de memoria.

Los datos, tienen un tipo, inherente al dato.
    3 -> int
    3.6 -> double
    "hola" -> String
    new ArrayList<String>() -> ArrayList<String>
    
---

Hoy en día JAVA ha caido en desuso!
En los albores del milenio (1999-2002), JAVA era el lenguaje REY.... 
Todo el mundo quería aprender JAVA... y JAVA Se usaba para todo!

    Desktop: JAVA
    App web: 
        FrontEnd JAVA: JSPs, Servlets, JFCs
        Backend JAVA
    App smartphone (Android): JAVA
    
Esto ha cambiado radicalmente!

    Desktop: NO ES JAVA
    App web: 
        FrontEnd:   JS
        Backend:    JAVA
    App smartphone (Android): Kotlin

# Kotlin? 

Un lenguaje de programación alternativo a JAVA (sintaxis alternativa a JAVA)
JAVA, su arquitectura es GENIAL !!! .java -> .class(bytecode) -> JVM (JIT-Hotspot)

Vaya cagada de sintaxis !

IntelliJ -> JetBrains

# Scala

Similar a Kotlin... Es otra sintaxis alternativa a JAVA . Se usa mucho en le mundod el BigData

---

# Cual fue la muerte de JAVA? 

## Versiones de JAVA

version 1.0         1996
version 1.1         1997
version 1.2         1998
version 1.3         2000
version 1.4         2002
version 1.5         2004
version 1.6         2006
<<<<<   PRIMERA MUERTE DE JAVA: 
    Compra de Sun microsystems por parte de Oracle. SU HARDWARE !
version 1.7         2011 + 5 años
version 1.8         2014 + 3 años
<<<<< LA PUNTILLA: 
    Oracle dice: A partir de la proxima versión de JAVA:
                    - Usuarios finales a pagar 25$ al año por la JVM
                    - Servidores 50$ por core
        
        Google: Que habían elegido a JAVA como lenguaje oficial para Android
                1º Convertir la JVM en un estandar (una especificación Opensource)
                    OpenJDK
                2º Liberar JEE
                Oracle mantuvo el  del lenguaje y el poder de su evolución. Acuerdo:
                    Cada 6 meses debe salir una versión de JAVA
            NodeJs: El antiguo interprete/motor de JS que habñia dentro del navegador Chromium:
                        Chrome, Edge, Opera, Safari
                    Lo liberaron como proyecto Opensource independiente a Chromium
                    Desde ese momento, se puede ejecutar código JS fuera de un navegador.
            
version *1.9*       2017 + 3 años       \
version 1.10        2018 + 6 meses       > Muchos de los cambios ha ido a ver si conseguian recuperar gente de JS
version 1.11        2018 + 6 meses      /
version 1.12        2019 + 6 meses
version 1.13        2019 + 6 meses
version 1.14        2020 + 6 meses
version 1.15        2020 + 6 meses
version 1.16        2021 + 6 meses
version 1.17        2021 + 6 meses
version 1.18        2022 + 6 meses
version 1.19        2022 + 6 meses
version 1.20        2023 + 6 meses

En 8 años, salieron 2 versiones de JAVA. Os parece un ritmo aceptable para un lenguaje de programación.
En 11 años, salieron 3 versiones de JAVA.

Fue la BBDD reina en el mundo openSource... hasta que cayo en manos de Oracle... que la desguazaron.

    MySQL -> MariaDB
    OpenOffice (StarOffice) -> LibreOffice
    Hudson -> Jenkins
    
# J2EE -> JEE -> JakartaEE: 

Java Enterprise Edition Colección de estandares (Framework):
- jdbc
- jms
- jpa
- servlets


# Algunos problemillas en la sintaxis de JAVA

## La gestión de los null -> Optional 1.8

## Todo el código debe de ir en una clase.. 1.8 + 1.9
    
Que quiero solo una función tio !!!!!

## Modificadores de privacidad

  
                    Mismo fichero       Mismo paquete       Heredadas en otros paquetes     Resto otros paquetes
- public                √                   √                       √                               √
- protected             √                   √                       √                               x
- no poner nada         √                   √                       x                               x
- private               √                   x                       x                               x

Os parecen pocos, muchos o los justos? ME FALTAN !

## Getter y los Setter

Que tal veis los getter y los setter de JAVA? 

Sirve para encapsular. Es imporatnte encapsular? A veces... a veces NO.

```java
public class Rectangulo {
    
    public int base;
    public int altura;
    
    public int area(){
        return base*altura;
    }
    public int superficie(){
        return 2*base+2*altura;
    }
}
// ^^^^ DIA 1

// vvv Lo escribo del día 2 al 100
...
Otro lao'

Rectangulo r1=new Rectangulo();
r1.base = 10;
r1.altura = 5;
System.out.println(r1.area()); // 50

r1.altura = 20;
System.out.println(r1.area()); // 200
System.out.println(r1.altura); // 20

```
Pero me dicennnn ESO ES HORIIBLE. No tienes npi de JAVA. MUY MALA PRACTICA. Y es verdad!
Todo con getter y setter...MENTIRA !  Para encapsular!  MIERDA PA TI !
Para facilitar la mantenibilidad del CODIGO !
Porque es la única forma que JAVA con su sintaxis permite hacer eso.


```java
public class Rectangulo {
    
    private int base;
    private int altura;
    
    public void setAltura(int altura){
        this.altura=altura;
    }
    
    public int getAltura(){
        return this.altura;
    }
    
    public int getBase(){
        return this.base;
    }
    
    public void setBase(int base){
        if(base<0) throw OSTION !!!!
        this.base=base;
    }
    
    public int area(){
        return base*altura;
    }
    public int superficie(){
        return 2*base+2*altura;
    }
}

...
Otro lao'

Rectangulo r1=new Rectangulo();
r1.setBase(10);
r1.setAltura(5);
System.out.println(r1.area()); // 50

r1.setAltura( 20 );
System.out.println(r1.area()); // 200
System.out.println(r1.getAltura()); // 20

```










--- 

Conceptos en JAVA

- Modulos:              module Proyecto JIGSAW: 
                            El mayor cambio que se ha metido en JAVA desde la programación funcional: 1.9
    - Paquetes:         package
        - Clase         class
        - Interfaz      interface

module-info.java

module "mimodulo" {
    
}

Un modulo es un JAR, una librería

Qué entendemos por una librería?
- Es una colección de jars

    diccionario-api.jar                 < Las interfaces
    diccionario-ficheros.jar    
    diccionario-bbdd.jar
    diccionario-webservice.jar

---
Cuidado!

En Java 1,8 se mete el concepto de función default! que son funciones que pueden contener código
Eso es otro tema... Y nunca debemos meter código en esas funciones mas alla de:
throw new Exception()


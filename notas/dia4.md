Ángel=Significado1
ángel=Significado2|Significado3

.lines()

    Stream <String>     
    "Ángel=Significado1"
    "ángel=Significado2|Significado3"

map() .split("=")

    Stream <String[]>     
    ["Ángel","Significado1"]
    ["ángel","Significado2|Significado3"]
    
.collect() -> Map<String,List<String>>

    Map<String,List<String>>
    "ángel" : List("Significado1")
    "ángel" : List("Significado2", "Significado3")
    
    Función de Merge (consolidación de valores)

        STREAM<List<String>>  n                          map        Stream<Stream<String>> n
            List("Significado1")                        .stream()   Stream<String>("Significado1")
            List("Significado2", "Significado3")        .stream()   Stream<String>("Significado2", "Significado3")
                                                        
        STREAM<List<String>>  n                         flatmap       Stream<Stream<String>> m
            List("Significado1")                        .stream()   Stream<String>("Significado1")
            List("Significado2", "Significado3")        .stream()   Stream<String>("Significado2", "Significado3")
                                                                                v
            FlatMap entiende que cada elemento que se ha generado es un STREAM, y lo que hace es fusionar los streams
                                                                        
                                                                        Stream<String>
                                                                        "significado1"
                                                                        "significado2"
                                                                        "significado3"
                                                                            v
                                                                        collect
                                                                            v
                                                                        List<String>
    

        List("Significado1", "Significado2", "Significado3")
    

    Map<String,List<String>>
    "ángel" : List("Significado1", "Significado2", "Significado3")


Stream<Integer> 5 -> map ->   Stream<Integer[]> 5
    2                           [2]
    4                           [2, 2]
    6                           [3, 2]
    8                           [2, 2, 2]
    13                          [13] 
    
    Funcion: Factorizar 
    
    2  = [2]
    4  = [2 , 2]
    6  = [3 , 2]
    8  = [2 , 2 , 2]
    13 = [13]
    

Stream<Integer> 5 -> flatmap                  ->    Stream<Integer[]> ?
    2                           [2]                     2
    4                           [2, 2]                  2
                                                        2
    6                           [3, 2]                  3
                                                        2
    8                           [2, 2, 2]               2
                                                        2   
                                                        2
    13                          [13]                    13
    
---

# MAVEN

Automatizar tareas repetitivas en un proyecto JAVA:
- Gestión de dependencias
- Compilación
- Ejecución de los test
- Empaquetado
- Distribución de un artefacto
- Envío de mi código a SonarQube
- GEneración de una imagen de contenedor con mi proyecto

## Maven no sabe hacer la O con un canuto!

Todo en maven se realiza a través de PLUGINS.
Vienen de serie 8 o 10 plugins
Pero puedo meterle más. O cambiar los que trae

# Estructura de un proyecto en maven

PROYECTO
    |-src
    |   |-main
    |   |   |-java          Codigo principal del programa
    |   |   |-resources     Archivos requeridos (diccionario)
    |   |-test
    |       |-java          Codigo de pruebas
    |       |-resources     Archivos req. por las pruebas (diccionario peq)
    |-target
    |   |-classes
    |   |-test-classes
    |   |-surefire-reports
    |   |-artefacto.jar
    |-pom.xml       Archivo de configuración de maven para mi proyecto
    
# A maven le podemos pedir que ejecute tareas que hayamos automatizado: GOALS 

- clean
- compile           Buscar depenendecias (se buscan en la carpeta .m2).
                    Si no se encuentran, se descargan de maven central a la carpeta .m2
                    Compila lo que tenemos en src/main/java y el resultado (.class) los pone en target/classes
                    Copia los ficheros de src/main/resources a target/classes
- test-compile      Compila lo que tenemos en src/test/java y el resultado (.class) los pone en target/test-classes
                    Copia los ficheros de src/test/resources a target/test-classes
- test              Ejecuta las pruebas (los programas) compilados en target/test-classes
                    Y genera un informe en target/surefire-reports
- package           Empaqueta en un jar, war, ear (zip) la carpeta target/classes y lo deja en target
- install           Copia el arfecto (el jar, war, ear) a mi carpeta ~/.m2 < cache de artefactos de maven
                    Para que pueda ser utilizada en otros proyectos


MODULOS EN JAVA <> MODULOS DE MAVEN <> SUBMODULOS DE GIT

---


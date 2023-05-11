# NOVEDADES HITOS JAVA

## Java 1.5

- Iterable
- Anotaciones

## Java 1.8

- Soporte a la programación funcional
    - Un nuevo paquete: java.util.function
    - Expresiones lambda
    - Operador ::
    - Un nuevo paquete java.util.stream
        - Todas las colecciones las podemos pasa a un Stream, para aplicar programación funcional
            Basada en modelo Map-Reduce
- Posibilidad de escribir funciones PUBLICAS ESTATICAS en interfaces
- Posibilidad de escribir funciones default en interfaces (Facilitar el mnto)
- Optional que nos resuelven el problema de los null
- Un nuevo api para la gestión de fechas. Hasta entonces:
    - java.util.Date: Millis
    - Calendar [GregorianCalendar]
    - java.sql.Date
  El nuevo api basicamente es la antigua librería joda-time:
    - LocalDate
    - LocalDateTime
    - ZonedDateTime
    - Instant (Hace de puente entre las APIs antiguas y las nuevas)
- La capacidad de anotar mediante @anotaciones los argumetos de una función (Ejemplo: @NotNull)

## Java 9

- Modulos
    - module-info.java
    - exportaciones de paquetes a otros módulos
    - Inyección de dependencias a través del ServiceLoader
- Posibilidad de escribir funciones PRIVADAS ESTATICAS en interfaces
- Jshell                                                                    GUIÑO a los pythoneros
    - La posibilidad de crear scripts en java
- Las funciones .of de todas las interfaces de Collections que generan colecciones inmutables

## Java 10

- Uso de la palabra var, haciendo inferencia de tipos:                      GUIÑO a los pythoneros
    - var numero = 7;
    - var lista = new ArrayList<String>();
    - var resultado = miFuncion(argumento1, argumento2); // MALA PRACTICA
- Las funciones .copyOf de todas las interfaces de Collections que generan una copia 
  inmutable de una coleccion
- Optional
    optional.orElseThrow()

## Java 11

- Posibilidad de ejecutar fichero .java directamente desde la Maquina virtual   GUIÑO a los pythoneros
- La posibilidad de usar la palabra var en las expresiones lambda.
        (numero) -> numero*2    // Nunca defino los tipos... se infieren del contexto
        (int numero) -> numero*2    
        (@NotNull Map<String,<List<String>> mapa) -> ....   Aquí si
        (@NotNull mapa) -> ....                             Error de compilación
        (@NotNull var mapa) -> ....                         Este es el caso de uso
- Funciones para leer archivos y para escribirlos:
    - Files.writeString
    - Files.readString
- Cambios en la clase String:
    - .lines() -> Stream<String>
    - .isBlank()
- API peticiones http sufre un rediseño.
    Se permite la creación de peticiones mediante un patrón builder, que facilita el trabajo.
    
        HttpRequest request = HttpRequest.newBuilder()
                                         .POST()
                                         .uri(URI.create("http://foo.com/"))
                                         .header("clave","valor")
                                         .build();

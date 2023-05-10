import java.util.function.*; // Java 1.8
import java.util.List; // Java 1.8
import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.Collectors;

public class App {
    
    // Programación funcional 1.8
    // Cuando el lenguaje me permite referenciar desde una variable a una función
    public static void main(String [] args) {
        int numero = 7;
        String texto = "hola";
        
        // En java 1.8 sale el paquete java.util.function
        Function<Integer, Integer> miFuncion = App::doblar; //      :: Nuevo operador en java 1.8
        System.out.println( miFuncion.apply(5) ); // Ejecuto una función que tengo guardada en una variable

        //  Otro que tenemos en java 10
        var texto2 = "hola";
    
        // Al poder referenciar una variable desde una función, puedo comenzar
        // A constuir funciones que acepten FUNCIONES como argumentos: TACHAN !!!!!
        System.out.println( doblar(5) );            // Desde esta función (MAIN) ejecuto doblar
        imprimirResultado( App::doblar, 5 );        // Delego desde MAIN la ejecución de la 
                                                    // función doblar a la función imprimirResultado
        // Java 1.8. Se añade un nuevo operador adicional    ->   Definir una función anónima como una expresión
        // Eso se conoce en el mundo de la programación como una EXPRESION LAMBDA
        
        // En programación que es una EXPRESION? Una porción de código que devuelve un valor
        double valorDecimal = 3.6 * 9;     // Statement
                             /////////         Expresion
                           
                           
        Function<Integer, Integer> miFuncion2 = (Integer dato) -> {
                                                                    return dato * 3; 
                                                                };
        System.out.println( miFuncion2.apply(2) );                                                                

                                                 // Inferencia de tipos
        Function<Integer, Integer> miFuncion3 = (dato) -> dato * 3;
        System.out.println( miFuncion3.apply(20) );  
        
        imprimirResultado( num -> num/2 , 40);

        // Ejemplos y nuevas funcionalidades java 1.8
        
        //List<String> miLista = new ArrayList<String>();           PONGO LOS TIPOS 17 veces en la linea
        List<String> miLista = new ArrayList<>();           // Bueno, ya solo en un sitio 
                                            // Inferencia de tipo. El dato infiere de la variable
        miLista.add("texto1");
        miLista.add("Texto2");
        miLista.add("TEXTO3");
        
        System.out.println( new ArrayList<String>()  );
        
        var miListaGuay = new ArrayList<String>() ;
        var miListaTambienGuay = Arrays.asList("texto1", "Texto2", "TEXTO3");

        
        //mi_lista = ["texto1", "Texto2", "TEXTO3"] PYTHON 
        // Java 9 se Añaden los métodos .of a las interfaces de Collections: List, Sep, Map
        //  Esas funciones .of generan colecciones INMUTABLES
        var miSuperListaPorFin = List.of("texto1", "Texto2", "TEXTO3");  // Solo necesito importar List
                                 // Inyección de dependencias

        // Quiero iterar sobre esa lista para sacar los valores por pantalla
        // Pre JAVA 1.5
        for(int i=0;i<miSuperListaPorFin.size(); i++){
            System.out.println(miSuperListaPorFin.get(i));
        }
        // Pre Java 1.8
        for(String item : miSuperListaPorFin){
            System.out.println(item);
        }
        // Post JAVA 1.8
        miSuperListaPorFin.forEach( System.out::println );
        miSuperListaPorFin.forEach( item -> System.out.println(item) );
        
        // En JAVA 1,8 sale un paquete nuevo java.util.stream.Stream
        // Que es un Stream: Es una secuencia de Objetos sobre los que puedo aplicar programación funcional
        // Cualquier colelction de java se puede convertir a un Stream, a través de la funcion .stream()
        
        var nuevaLista = miSuperListaPorFin.parallelStream()    // Para cada elemento de la lista
                          .map( txt -> txt.toUpperCase() )      // Lo pongo en mayusculas
                          .filter( txt -> txt.endsWith("2") )   // Me quedo con los acaban en 2
                          //.forEach( System.out::println);     // Los imprimo
                          .collect( Collectors.toList() );      // Gurdarlo en una lista
                          
    
        List<String> nuevosDatos = new ArrayList<>();
        for(String item:miSuperListaPorFin){
            if(item.endsWith("2"))
                nuevosDatos.add(item.toUpperCase());
        }
        // Map permite generar de un stream otro stream, donde a cada elemento del primer stream le corresponde un elemento en el segundo stream. 
        // Siendo el elemento del segundo stream el resultado de aplicar sobre ele emento del del primer stream una función de mapeo
        /*
        Stream 1                                        Stream 2
          1         --> MAP (numero -> numero + 2) -->      3
          2                                                 4
          3                                                 5
          
        
        */
        

    }
    
    public static void imprimirResultado(Function<Integer, Integer> funcion, int numero){
        System.out.println( funcion.apply(numero) );
    }
    
    public static int doblar(int numero) {
        return numero * 2; 
    }
    
    public static int triple(int numero) {
        return numero * 3; 
    }
    
}
// JAVA 11: Posibilidad de ejecutar un fichero .java, sin compilarlo previamente: 
//          java App.java
// Qué os parece esto? 
//          Esto es un engañabobos!
//          Esto es para atraer a la gente de python, js

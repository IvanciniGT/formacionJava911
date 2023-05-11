package com.curso.diccionario.impl;

import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

interface Utilidades {
 
    static String normalizar(String palabra) {
        return palabra.toLowerCase();  // Devuelvo la palabra en minúsculas
    }
    
    
    static int puntuacionDeLevestein(String palabra1, String palabra2) {
        return computeLevenshteinDistance(palabra1.toCharArray(),
                                          palabra2.toCharArray());
    }
    
    private static int computeLevenshteinDistance(char [] str1, char [] str2) {
        int [][]distance = new int[str1.length+1][str2.length+1];

        for(int i=0;i<=str1.length;i++){
                distance[i][0]=i;
        }
        for(int j=0;j<=str2.length;j++){
                distance[0][j]=j;
        }
        for(int i=1;i<=str1.length;i++){
            for(int j=1;j<=str2.length;j++){ 
                  distance[i][j]= minimum(distance[i-1][j]+1,
                                        distance[i][j-1]+1,
                                        distance[i-1][j-1]+
                                        ((str1[i-1]==str2[j-1])?0:1));
            }
        }
        return distance[str1.length][str2.length];
        
    }
    
    private static int minimum(int a, int b, int c) {
         return Math.min(a, Math.min(b, c));
    }
    
    static boolean existeElFicheroDelDiccionario(String idioma){
        return ficheroDeDiccionario(idioma).isPresent();
    }
    
    private static Optional<URL> ficheroDeDiccionario(String idioma){
        String nombreDeArchivo = "diccionario."+idioma+".properties";
        return Optional.ofNullable(Utilidades.class.getClassLoader().getResource( nombreDeArchivo ));
    }
    
    static Optional<Map<String, List<String>>> cargarDiccionario(String idioma) {
        Optional<URL> ficheroDeDiccionario = ficheroDeDiccionario(idioma);
        if( ficheroDeDiccionario.isPresent() ){
            try{
                String contenido = Files.readString(Path.of(ficheroDeDiccionario.get().toURI())); // JAVA 11
                //Ángel=Nombre de persona
                //ángel=Ser elevado de consciencia divina...|Significado2
                //"ángel=Ser elevado de consciencia divina...|Significado2"     ->     ["ángel","Ser elevado de consciencia divina...|Significado2"]
                return Optional.of (
                         contenido.lines()                       // Para cada linea // JAVA 11 -> Stream<String>
                                  .filter(   linea -> ! linea.isBlank() ) // Quitar lineas en blanco... Quedarme con las que no son blancas 
                                  .map(      linea -> linea.split("=") )  // Me quedo con el termino y las definiciones por separado
                                                                         // Stream<String> -> Stream<String[]>
                                  .collect(    Collectors.toMap(
                                                                    array -> normalizar( array[0] ),          // Genero la clave del mapa: La palabra
                                                                    array -> Arrays.asList( array[1].split("|") ),   // Genero el valor del mapa: la lista de significados
                                                                    // Si un término aparece 2 veces... junto sus definiciones
                                                                    (definiciones1, definiciones2) -> Stream.of(definiciones1,definiciones2)    // Stream<List<String>>
                                                                                                        .flatMap(Collection::stream)        // Stream<String>
                                                                                                        // .flatMap(lista -> lista.stream() ) // Lo mismo que arriba
                                                                                                        .collect( Collectors.toList() )
                                                                ) 
                                 ) );
            } catch(Exception e) {
                // Al log
                System.err.println("Error al leer el diccionario de idioma "+ idioma);
                e.printStackTrace();
            }
        }
        return Optional.empty();
        
    }
    
    
    //Stream    -> map ->           Nuevo Stream
    //[1,2,3]     .stream()     -> Stream[1,2,3]
    //[a,b]                     -> Stream[a,b]  
    //Stream    -> flatMap ->      Nuevo Stream
    //[1,2,3]     .stream()     -> 1
    //[a,b]                     -> 2
    //                             3
    //                             a
    //                             b
    
}
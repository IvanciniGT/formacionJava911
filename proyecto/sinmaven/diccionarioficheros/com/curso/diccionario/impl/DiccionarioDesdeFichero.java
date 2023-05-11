package com.curso.diccionario.impl;

import com.curso.diccionario.*;

import java.util.List;
import java.util.Optional;
import java.util.Comparator;
import java.util.stream.Collectors;
import java.util.Map;

class DiccionarioDesdeFichero implements Diccionario{
    
    private final Map<String, List<String>> palabrasConSignificado;
    private final String idioma;
    
    DiccionarioDesdeFichero(String idioma, Map<String, List<String>> palabrasConSignificado){
        this.palabrasConSignificado = palabrasConSignificado;
        this.idioma = idioma;
    }
    
    public String getIdioma(){
        return this.idioma;
    }
    
    public boolean existe(String palabra){
        return palabrasConSignificado.containsKey( Utilidades.normalizar(palabra) );
    }
    
    public Optional<List<String>> dameSignificados(String palabra){ // J1.8
        return Optional.ofNullable( palabrasConSignificado.get( Utilidades.normalizar(palabra) ) );
    }
    
    public List<String> dameAlternativas(String palabraSuministrada){
        final String palabraObjetivo = Utilidades.normalizar(palabraSuministrada);
        return this.palabrasConSignificado.keySet()                                                 // Me quedo con las palabras que existen
                   .parallelStream()                                                                // Preparo la CPU para freir huevos... y para cada palabra
                   .filter(     palabra     -> Math.abs(palabra.length()-palabraObjetivo.length()) <= Configuracion.DISTANCIA_MAXIMA_PERMITIDA  ) // Me quedo con palabra de tamaño similar
                   .map (       palabra     -> new Sugerencia(palabra, Utilidades.puntuacionDeLevestein(palabra, palabraObjetivo) ) ) // añado puntuaciones de Levenshtein para cada palabra
                   .filter(     sugerencia  -> sugerencia.distancia <= Configuracion.DISTANCIA_MAXIMA_PERMITIDA ) // Me quedo solo con las similares
                   .sorted(     Comparator.comparing( sugerencia -> sugerencia.distancia ) )        // Ordeno por distancia de menor a mayor
                   .limit(      Configuracion.ALTERNATIVAS_MAXIMAS  )                               // Me quedo solo con las mejores
                   .map(        sugerencia  -> sugerencia.palabra )                                 // Desecho las distancias
                   .collect(    Collectors.toList() ) ;                                             // Transformo el Stream<String> -> List<String>
        
    }
    
    private static class Sugerencia {
        String palabra;
        int distancia;
        Sugerencia(String palabra,int distancia){
            this.palabra = palabra;
            this.distancia = distancia;
        }
    }
}
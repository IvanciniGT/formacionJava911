package com.curso.diccionario.impl;
import com.curso.diccionario.*;

import java.util.*;

// Va a tener una cache de Diccionarios

public class SuministradorDeDiccionariosDesdeFichero implements SuministradorDeDiccionarios{
 
    private final Map<String,Diccionario> cacheDeDiccionarios = new WeakHashMap<>() ; // Java 1.2
 
    public boolean tienesDiccionario(String idioma){
        if( cacheDeDiccionarios.containsKey(idioma)            ) return true;
        if( Utilidades.existeElFicheroDelDiccionario(idioma)   ) return true;
        return false;
    }

    public Optional<Diccionario> dameDiccionario(String idioma){
        if(tienesDiccionario(idioma)){                                                  // Si lo tengo
            if(!cacheDeDiccionarios.containsKey(idioma)) {                              // Y no está cacheado
                Optional<Map<String, List<String>>> palabrasConSignificado = Utilidades.cargarDiccionario(idioma);    // Cargo las palabras
                if (palabrasConSignificado.isPresent()){
                    Diccionario nuevoDiccionario=new DiccionarioDesdeFichero(idioma, palabrasConSignificado.get() );   // Con esas palabras creo un Diccionario
                    cacheDeDiccionarios.put(idioma, nuevoDiccionario);                      // Meterlo en cache
                }
            }
        }
        return Optional.ofNullable(cacheDeDiccionarios.get(idioma));    // Lo devuelvo de donde? de la cache
    }
    
}
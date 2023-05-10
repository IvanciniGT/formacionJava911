package com.curso.diccionario;

import java.util.List;
import java.util.Optional;

public interface Diccionario{
    
    String getIdioma();
    
    boolean existe(String palabra);
    
    List<String> dameAlternativas(String palabra);
    
    Optional<List<String>> dameSignificados(String palabra) ;
}
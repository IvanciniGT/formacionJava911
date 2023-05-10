package com.curso.app;

public class App {
    
    public static void main( String[] args ){
        
        // Comprobar los argumentos
            // El primer args es el idioma
            // El segundo args la palabra a buscar
        // Cargar Diccionario en el Idioma
            // Obtener un SuministradorDeDiccionarios <- ServiceLoader
            // Me puede dar muchos.. Cual me interesa? 
                // El que tenga un Diccionario en el idioma solicitado
        
        // Si llegados a est punto no tengo Diccionario: Aviso al usuario
            // No hay diccionario paar tu idioma. Gracias !
            // Y me piro !
        
        // Preguntar al diccionario por la palabra
        // Si existe:
            // Aviso al usuario de que existe
            // Muestro sus significados
        // Si no existe:
            // Aviso al usuario de que no existe
            // Muestro sus alternativas
        
    }
    
}
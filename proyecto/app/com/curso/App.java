package com.curso.app;

// Inversión de dependencias: NO DEPENDO DE IMPLEMENTACION CONCRETA
import com.curso.diccionario.Diccionario;
import com.curso.diccionario.SuministradorDeDiccionarios;
import java.utilServiceLoader;

public class App {
    
    public static void main(String[] args) {
        
        // Validar los parametros
        if(args.length != 2){
            System.err.println("Idioma y/o palabra no suministrados.")
            System.err.println("Modo de uso:")
            System.err.println(" $ java ... com.curso.app.App <idioma> <palabra>");
            System.exit(1);
        }
        
        final String idioma = args[0];
        final String palabra = args[1];
        
        // Obtener un diccionario
        Diccionario miDiccionario = null;                       // INYECCION DE DEPENENDECIAS: Me suministran un SuministradorDeDiccionarios
        Iterable<SuministradorDeDiccionarios> suministradores = ServiceLoader.load( SuministradorDeDiccionarios.class );

        for( SuministradorDeDiccionarios suministrador : suministradores){              // De los suministardors
            if(suministrador.tienesDiccionario(idioma)){                                // El que tenga diccionario
                miDiccionario = suministrador.dameDiccionario(idioma).orElseThrow();    // Lo compro
                                                                     // BUG en el Suministrador
                break;                                                                  // Dejo de buscar
            }
        }
        
        /*
        Diccionario miDiccionario = suministradores.stream()
                        .filter( suministrador -> suministrador.tienesDiccionario(idioma))
                        .limit(  1)
                        .map(    suministrador -> suministrador.dameDiccionario(idioma).orElseThrow())
                        .findAny();
        */
        if( miDiccionario == null ) {
            System.err.println("No se ha encontrado un suministrador válido para ese idioma.")
            System.exit(2);
        }
        
        // Buscar la palabra
        if(miDiccionario.existe(palabra)){
            System.out.println("La palabra se ha encontrado en el diccionario.");
            System.out.println("Significados:");
            miDiccionario.dameSignificados(palabra).orElseThrow().forEach( significado -> System.out.println("- "+significado) );
            //miDiccionario.dameSignificados(palabra).orElseThrow().forEach( System.out::println ); // Lo de arriba porque quiero guioncito
        }else{
            System.out.println("La palabra NO se ha encontrado en el diccionario.");
            System.out.println("Alternativas:");
            miDiccionario.dameAlternativas(palabra).forEach( alternativa -> System.out.println("- "+alternativa) );
        }
        
    }
    
}
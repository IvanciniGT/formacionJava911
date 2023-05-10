package es.curso.paqueteb;

public class Clase {
    
    public String dameTexto(){
        return "Ahi va un texto";
    }
    
    public static String dameOtroTexto(){                          // J1.8
        return "Ahi va otro texto\n"+dameOtroTextoMas();
    }

    public static String dameOtroTextoMas(){               // J1.9
        return "Ahi va otro texto más";
    }
    
}
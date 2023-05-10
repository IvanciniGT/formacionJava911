package es.curso.paqueteb;

public interface Interfaz {
    
    String dameTexto();
    
    static String dameOtroTexto(){                          // J1.8
        return "Ahi va otro texto\n"+dameOtroTextoMas();
    }

    private static String dameOtroTextoMas(){               // J1.9
        return "Ahi va otro texto más";
    }
    
    default String dameOtroTextoMasMas(){                          //J1.8
        throw new RuntimeException("Sim implementar");
    }
}
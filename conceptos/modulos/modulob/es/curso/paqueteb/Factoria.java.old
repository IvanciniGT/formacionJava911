package es.curso.paqueteb;
import es.curso.paqueteb.impl.Clase2QueImplementaInterfaz;
import es.curso.paqueteb.impl.Clase1QueImplementaInterfaz;


public interface Factoria {
    
    public static Interfaz dameInstanciaDeTipoA(){                          // J1.8
        // Si el dato no esta en la cache
            // Crear nueva instalncia y 
            // Meter el dato en una cache
        // devolver desde la cache
        return new Clase1QueImplementaInterfaz();
    }

    public static Interfaz dameInstanciaDeTipoB(){                          // J1.8
        return new Clase2QueImplementaInterfaz();
    }
    
}
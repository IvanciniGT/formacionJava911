// Archivo nuevo en JAVA 1.9
module modulob {
    
    exports es.curso.paqueteb; 
    
    // Este el el paquete que este modulo EXPORTA
    // Al único al que otros modulos pueden tener acceso
    // De ese paquete podrán acceder a las clases / funciones PUBLICAS 
    
    // No importa si en otros paquetes hay clases publicas
    // Otros paquetes no son exportados.
    
    provides es.curso.paqueteb.Interfaz with
        es.curso.paqueteb.impl.Clase2QueImplementaInterfaz;
        //es.curso.paqueteb.impl.Clase2QueImplementaInterfaz;
        
        // INYECCION DE DEPENDENCIAS 
}
# Libreria Diccionario

Funcionalidad:
- Disponer de diccionarios en distintos idiomas
- Buscar significados de palabras 
- Solicitar correcciones /sugerencias de terminos

API: Forma de comunicarme de con la librería: INTERFACES

interface Diccionario.java
    boolean existe(String palabra)                                              GUAY !
    Optional<List<String>> dameAlternativas(String palabra)                     RUINA !             
    
        manana
            manzana
            manzano
            mañana
            ananá
        
        sak3895%%&/·GUAY!!!
    List<String> dameAlternativas(String palabra)                               GUAY !
    
    List<String> dameSignificados(String palabra)                               RUINA !
    
        A la vista de la definición de esa función, que voy a obtener como respuesta?
            > List<String>
        
        Siempre?
        - Si la palabra existe: List<String>
        - Si no existe?         List<String> vacia
                                        Que no diferencio el comportamiento de si ha ido bien o mal!
                                null
                                        Me permite diferenciar el comportamiento... NO QUEDA EXPLICITO !
                            Cómo lo se? 
                                - Mirar el código... si está disponible
                                - Mirar la documentación... a ver si se han dignado... En serio? 2023? Mirar docu?
            PROBLEMA: En la definición de la función no está claro su comportamiento.
            Opción?
                                - Lanzar una exception
                                        Nunca debo lanzar una excepción para manejar LOGICA. Son muy caras!
    List<String> dameSignificados(String palabra) throws NoSuchWordException    RUINA !!!
    
    Hoy en día la solución a esto es muy clara... SOLO HAY UNA POSIBLE !
    Cualquier otra solución está considerada una MALA PRACTICA!!!
    
    SonarQube: Programa que revisa un código, lo lee... lo que antes hacía un senior!
    JAVA 1.8: 
        Optional<List<String>> dameSignificados(String palabra) 
        Hoy en día una función NO PUEDE DEVOLVER null. ESO ES UNA MUY MUY MUY MUY MALA FATAL PRACTICA !
        
        
interface Diccionario.java
    String getIdioma()
    boolean existe(String palabra)
    List<String> dameAlternativas(String palabra)
    Optional<List<String>> dameSignificados(String palabra) 
    
    // Esta función la defino dentro de 1 año... qué pasa?
    default Optional<List<String>> dameSinonimos(String palabra) {
        throw new Exception ("Not implemented");
    } // Facilita el mantenimiento.
    


interfaz SuministradorDeDiccionarios.java
    boolean tienesDiccionario(String idioma)
    Optional<Diccionario> dameDiccionario(String idioma)
    
class SuministradorDeDiccionariosFactory.java   
    // CAGADA. No quiero la clase para nada 
    static SuministradorDeDiccionarios dameSuministardorDeDiccionarios(){
        // Ha de haber código ??? 
    }
    
interface SuministradorDeDiccionariosFactory.java   
    // Esto me lo resolveron en JAVA 1.8
    // Me dejan crear funciones static en interfaces.
    // OJO: Esto es otra mierda ! pero al menos me hace entender que no necesito instancias... es más logico ... un poco
    static SuministradorDeDiccionarios dameSuministardorDeDiccionarios(){
        // Ha de haber código ??? 
    }
    // Eso sí, funciones estaticas publicas
    // Las privadas también ... Desde JAVA 1.9
    private static void algo(){
    }
    // Para que vale esto?
    // Para lo normal que usamos funciones privadas:
    // - Si tengo una función estática de 500 lineas, que haré? Partirla en varias, que el codigo sea más legible y mantenible < BASICO 
    //          El SonarQube os calcula lo que  llama: COMPLEJIDAD COGNITIVA
    // - Si tengo dos funciones publicasestáticas que comparten código
    
    
La librería tendrá un API... y una Implementación 
---
Mi programa: Me interesa la IMPLEMENTACION? NO, nunca !!!! JAMAS !

    import Diccionario;
    import SuministradorDeDiccionarios;
    //import SuministradorDeDiccionariosDesdeFicheros; // ESTA ES LA LINEA MALDITA !!!!!
    import SuministradorDeDiccionariosFactory;

    // Quiero saber si una palabra "coche" existe en el diccionario de "ES"
    //SuministradorDeDiccionarios miSuministrador = new SuministradorDeDiccionariosDesdeFicheros();
        // Pero la acabo de liar PARDA ! ME ACABO DE CARGAR EL Principio de Inversión de dependencias
    SuministradorDeDiccionarios miSuministrador = SuministradorDeDiccionariosFactory.dameSuministardorDeDiccionarios();
        // GUAY ! Respeto el principio de Inversión de dependencias. La factoría me da la instancia. 
        // Yo ya no la creo
        // Esto realmente es otra RUINA ! Esto era PRE JAVA 1.9
        // Desde JAVA 1.9, con los módulos, tenemos otra solución !
    boolean existeDiccionario = miSuministrador.tienesDiccionario("ES");
    if( existeDiccionario ) {
        Diccionario miDiccionario = miSuministrador.dameDiccionario("ES");
        boolean existePalabra = miDiccionario.existe("coche");
        // Hago lo quiero con el dato.. El dato ya lo tengo
    }
    

# Principio de Inversión de dependencias

En el diseño orientado a objetos, el principio de inversión de dependencia es una 
forma específica de desacoplar módulos de software.
Dice que los módulos de alto nivel no deberían depender de los de bajo nivel, ni las abstracciones de detalles.
    En resumen: Mi programa (modulo de alto nivel) no debe depender de Implementaciónes de mi librería.
    Solo de interfaces
    
Esto antes nos los pasabamos por ... Hoy en día es CRITICO

Antiguamente montábamos apps MONOLITICAS. Esa forma de montar apps HA MUERTO !
Ya no se hace. MUY MUY MUY FATAL RUINOSA MALA PRACTICA
No hay quien mantenga una app monolítica, donde todo esta fuertemente acoplado !

# Principio de Inyección de dependencias

Patrón de diseño orientado a objetos, en el que se suministran objetos a una clase en 
lugar de ser la propia clase la que cree dichos objetos.

Esos objetos cumplen contratos (Interfaz) que necesitan nuestras clases para poder funcionar. 

@Autowired de Spring está deprecated. Esta considerado hoy en día una mala practica

Hoy en día declaramos la variable que encesito en el constructor:

class MiServicio{  // MALA PRACTICA
    
    @Autowired
    MiAlmacenamiento miAlacenamiento;
}


class MiServicio{   // BUENA PRACTICA. Equivalente al @Autowired de Spring
    
    MiAlmacenamiento miAlacenamiento;
    
    public MiServicio(MiAlmacenamiento miAlacenamiento){
        this.miAlacenamiento=miAlacenamiento;
    }
}

Spring consigue ofrecernos la INYECCION DE DEPENDENCIAS mediante otro patron : Inversión de control

# Inversión de control
Patrñon de diseño de software, que nos ayuda a conseguir Inyección de dependencias
No es la única forma de conseguirlo. También lo podemos hacer con un Factory por ejemplo.
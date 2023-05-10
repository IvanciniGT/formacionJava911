package com.curso.paquetea;

import es.curso.paqueteb.Clase;
import es.curso.paqueteb.Interfaz;
//import es.curso.paqueteb.Factoria;
//import es.curso.paqueteb.impl.Clase1QueImplementaInterfaz;

import java.util.ServiceLoader;

public class App {
    
    public static void main(String[] args){

        // Trabajo contra la clase        
        System.out.println( Clase.dameOtroTexto() );
        System.out.println( Clase.dameOtroTextoMas() );
        
        Clase clase1=new Clase();
        System.out.println( clase1.dameTexto() );
        
                                        // Inyeccion de dependencias
                                        // Esto se comporta como un SINGLETON
        Iterable<Interfaz> interfaces = ServiceLoader.load(Interfaz.class);
        // Inversion de dependencias
        for(Interfaz interfaz : interfaces) {
            System.out.println( interfaz.dameTexto() );
        }
        
        
        
        // Trabajo contra la interfaz 
        //System.out.println( Interfaz.dameOtroTexto() );
        //System.out.println( Interfaz.dameOtroTextoMas() );    No puedo porque la funcion es privada
        //System.out.println( Interfaz.dameOtroTextoMasMas() ); ESTO NO CUELA

                        //   v Me meo en el concepto de Inversión de dependencias
                        //   v Ya que dependo de la clase que implementa la interfaz
        //Interfaz interfaz1 = new Clase3QueImplementaInterfaz();
    //  ^ Principio de inversión de dependencias
/*    
        Interfaz interfaz1 = Factoria.dameInstanciaDeTipoA();
        System.out.println( interfaz1.dameTexto() );
        //System.out.println( interfaz1.dameOtroTextoMasMas() );

        Interfaz interfaz2 = Factoria.dameInstanciaDeTipoB();
        System.out.println( interfaz2.dameTexto() );
        
*/        
        //System.out.println( interfaz2.dameOtroTextoMasMas() );

        // PROBLEMAS QUE TIENE ESTE CODIGO? 
        
        //Interfaz interfaz3 = new Clase1QueImplementaInterfaz();
        //System.out.println( interfaz1.dameTexto() );
        
        // YA he vuelto a manda a tomar por culo la inversión de dependencias 
        // Y VUELVO A TENER MODULOS ACOPLADOS 
        // Por que puedo, quiero y no me da miedo !
        // Tiene sentido ? NINGUNO
        // Pero ups! No me di cuenta que había una Interfaz Factoria !
        
        // Es más... el problema no lo tengo solo yo...
        // Los del equipo COLORAO, pueden tener código muy sensible en ese constructor
        // Quizas la factoria lleva cierta lógica... (por ejemplo)
        // dar de alta las instancias que se crean en una cache!

    }
    
}
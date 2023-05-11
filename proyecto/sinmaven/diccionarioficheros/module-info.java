module diccionarioficheros {
    
    requires diccionarioapi;
    
    provides com.curso.diccionario.SuministradorDeDiccionarios
        with com.curso.diccionario.impl.SuministradorDeDiccionariosDesdeFichero;
    
}
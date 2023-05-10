# Metodologías en CASCADA ! Waterfall

    Toma de requisitos SISTEMA COMPLETO
        Analísis / Diseño del sistema COMPLETO
            Desarrollo del sistema COMPLETO
                Pruebas
                    Documentación   
                        Instalación
                            Mantenimientos

    Jefe de proyecto definía unos hitos:
    HITO 1 - Fecha 15 de Junio - **R1, R2, R3, R4**
        Si no llego: 
            1- Suenan las Alarmas
            2- Llaman a los bomberos
            3- Se retrasa el hito: El proyecto va con retraso. 
            4- Nueva fecha de replanificación el 22 Junio.
    HITO 2 - Fecha 30 de Junio - R5, R6
    HITO 3 - Fecha 15 de Julio - R7, R8, R9

# Metodologías ágiles, SCRUM

Vamos a entregar el producto de forma incremental!

    Iteración 1 - Fecha 15 de Junio - R1, R2, R3, R4        ENTREGA, SPRINT
        Que pasa si no llego? R1, R2, R3? 
            Se instala R1, R2, R3. Sin milongas ! Ese día no se toca !
            20% de la funcionalidad .-... 100% funcional -> Prod
    Iteración 2 - 

Quiero poder usar una forma / arquitectura de desarrollo que me permita crecer de esta forma mi producto!

Sistema de Gestíon de Expedientes de La MEGAEMPRESA !!!! Era antes... Hoy en día NO QUIERO ESE SISTEMA !
    Aplicación WEB -> Weblogic

Sistema de venta de animalitos de compañía: Tienda de Animales Federico!
    BBDD Central -> Servicios
                                                <<       App Web *
                                                <<       App iphone
                                                <<       App Android *
                                                <<       Asistente de voz 
                                                <<       Sistema de voz interactivo
                                                
                                                
---

# Organizar un proyecto hoy en día

diccionario-core.jar
diccionario-ficheros.jar
diccionario-bbdd.jar
diccionario-webservice.jar
app.jar

Al ejecutar, elijo las librerias que quiero:
    diccionario-core.jar
    diccionario-webservice.jar
    app.jar

javac -d compilado \
 --module-source-path . \
 diccionarioapi/*.java \
 diccionarioapi/com/curso/diccionario/*.java 
 
 
 java --module-path compilado -m moduloa/com.curso.paquetea.App
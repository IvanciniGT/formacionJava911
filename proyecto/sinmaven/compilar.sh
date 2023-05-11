javac -d compilado \
 --module-source-path . \
 diccionarioapi/*.java \
 diccionarioapi/com/curso/diccionario/*.java \
 diccionarioficheros/*.java \
 diccionarioficheros/com/curso/diccionario/impl/*.java \
 app/*.java \
 app/com/curso/app/*.java 
 
 
 java --module-path compilado -m app/com.curso.app.App ES manana
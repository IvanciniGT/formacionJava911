Alternativas a una palabra:

Dame alternativas a "manana":

- manzana
- mañana
- manzano
- ananá
- banana

---

Algoritmo de Levenstein:
- Calcula cuantos caracteres habría que (añadir/eliminar/cambiar) para convertir una palabra en otra.
                            Puntuación de Levenstein
    manana -> ananá                 2
    manana -> banana                1
    manana -> manzana               1    
    manana -> mañana                1
    manana -> manzano               2
                manana -> federico              8

---
CONSTANTE: Maximo de alternativas a devolver
CONSTANTE: Distancia de Levenshtein maxima aceptable

Yo tengo una palabra que me solicitan.
Por otro lado tengo un diccionario con tropecientas mil palabras.

0º Para palabras cuya diferencia de lontitud con la que me SOLICITEN sea mayor que la consttante FUERA !
        6           10              Como poco la distancia es 4
        manana -> murcielago
1º Calcular la distancia de Levenshtein entre LA PALABRA QUE SOLICITAN y Todas las del diccionario... UYYY!!!
2º Quedarme con aquellas que tengan una distancia inferior a CTE
3º Ordenar las palabras por Menor puntuación                            PRIMERO FILTRO... asi la ORDENACION (que es una operación MUY PESADA)
4º Quedarme con las "Maximo de alternativas a devolver" mejores alternativas
5º Las devuelvo en una lista


STREAMS
- filter: Me permite quitar cosas de un Stream
- map:    transformar una cosa en otra (a través de una función de mapeo)
- collect: Devolver el stream como una coleccion (lista, mapa)
- sorted:  Ordenar
- limit:   Limitar el tamaño del stream (tirar datos a la basura a partir de una determianda cantidad)

STREAMs
---------
TODAS LAS PALABRAS DEL                              PALABRAS                    DISTANCIAS                      DISTANCIAS CHICAS   DIST. ORDEN         MEJORES     
DICCIONARIO 650k                                    FILTRADAS                                                                                           PUNTUACIONES
        
ananá   ->  FILTER                              ->  ananá   -> map              2,ananá          -> FILTER               2,ananá   -> SORT         1,banana -> limit (4)  ->  1,banana  -> map -> banana    -> .collect ["banana","manzana", "mañana", "manzano"] 
banana       Si la diferenecia de longitud          banana      distanciaLev    1,banana             distancia <= k      1,banana       distancia  1,manzana                  1,manzana           manzana
federico     con la palabra objetivo es <= K        federico                    8,federico                               1,manzana                 1,mañana                   1,mañana            mañana
manzana         LA MANTENGO                         manzana                     1                                        2                         2                          2,manzano           manzano
manzano                                             manzano                     2                                        1                         2           
mañana                                              mañana                      1
murcielago                                          -

PALABRA OBJETIVO es manana
K = 2
Como mucho 4 palabras

Clase Alternativa
    String palabra
    int distancia
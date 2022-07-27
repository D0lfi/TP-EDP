#!/bin/bash

#Reemplazo de subcadenas, que considere diferencias entre minúsculas y mayúsculas, pero ignore acentos.
#Recibe dos cadenas, y cada aparición de cadena1 debe reemplazarse por la cadena2. 
#Ejemplo:  cadena1: tre    cadena2: TRE las palabras: enTrepiso, entretenido, intrépido pasan a:enTrepiso, 
#enTREtenido, inTREpido


TEXTO=$(cat texto.txt)

ARGUMENTO1=$1
ARGUMENTO2=$2

TEXTO_ARREGLADO=$(echo "$TEXTO" | sed 'y/áÁéÉíÍóÓúÚñÑ/aAeEiIoOuUnN/')

RES=$(echo "$TEXTO_ARREGLADO" | sed /baz/!s/"$ARGUMENTO1"/"$ARGUMENTO2"/g )

echo "$RES"



#https://es.stackoverflow.com/questions/189281/acentos-en-bash

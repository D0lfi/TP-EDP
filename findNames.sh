#!/bin/bash

#findNames.sh Identificación de nombres propios 
#(se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.
#Ejemplos: Mateo, Estonoesunnombre, Ana.

TEXTO=$(cat texto.txt)

FILTRO=$(echo "$TEXTO" | grep -wo '[A-Z][a-z]*')

echo "$FILTRO"



# EXPLICACION
# https://unix.stackexchange.com/questions/709636/how-do-i-filter-words-starting-with-uppercase-in-bash-scripting-i-have-a-text-t
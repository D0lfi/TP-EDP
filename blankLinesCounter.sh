#!/bin/bash

#Contar lineas en blanco
RESULTADO=$(grep -cv -P '\S' texto.txt)
echo $RESULTADO

#EXPLICACION https://unix.stackexchange.com/questions/407934/count-the-number-of-blank-lines-at-the-end-of-file
#!/bin/bash

 # Escribe un programa que muestre por consola (con un print) los
 # números de 1 a 100 (ambos incluidos y con un salto de línea entre
 # cada impresión), sustituyendo los siguientes:
 # - Múltiplos de 3 por la palabra "fizz".
 # - Múltiplos de 5 por la palabra "buzz".
 # - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".

for i in $(seq 1 100); do
echo $i | grep -q '3' && echo "fizz" || echo $i | grep -q '5' && echo "buzz" || echo $i | grep -q '15' && echo "fizzbuzz" || echo $i
done
#!/bin/bash

# Escribe una función que reciba dos palabras (String) y retorne
# verdadero o falso (Bool) según sean o no anagramas.
# - Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.
# - NO hace falta comprobar que ambas palabras existan.
# - Dos palabras exactamente iguales no son anagrama.

# Función para detectar anagramas
es_anagrama() {
    # Eliminar espacios y convertir a minúsculas
    # Se utilizan comandos para eliminar espacios (tr -d '[:space:]') 
    # y convertir todas las letras a minúsculas (tr '[:upper:]' '[:lower:]')
    # para que la comparación no sea sensible a espacios ni a mayúsculas/minúsculas x2.
    local str1=$(echo "$1" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')
    local str2=$(echo "$2" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')

    # Ordenar las letras de cada cadena
    # Aquí se descompone cada palabra en letras (grep -o .), 
    # se ordenan alfabéticamente (sort) y luego se juntan de 
    # nuevo en una cadena sin saltos de línea (tr -d "\n").
    local sorted_str1=$(echo "$str1" | grep -o . | sort | tr -d "\n")
    local sorted_str2=$(echo "$str2" | grep -o . | sort | tr -d "\n")

    # Comparar las cadenas ordenadas
    if [ "$sorted_str1" == "$sorted_str2" ]; then
        echo "Son anagramas."
    else
        echo "No son anagramas."
    fi
}

# Solicitar al usuario que ingrese las palabras
read -p "Ingresa la primera palabra: " palabra1
read -p "Ingresa la segunda palabra: " palabra2

# Llamar a la función con las palabras ingresadas
es_anagrama "$palabra1" "$palabra2"

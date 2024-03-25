#!/bin/bash

while true; do
    echo "Conversión de longitud:"
    echo "1) Milímetros"
    echo "2) Centímetros"
    echo "3) Metros"
    echo "4) Kilómetros"
    echo "5) Salir"
    read -p "Selecciona una opción: " opcionLongitud

    case "$opcionLongitud" in
        1)
            read -p "Ingresa una cantidad en milímetros: " valor
            ;;
        2)
            read -p "Ingresa una cantidad en centímetros: " valor
            ;;
        3)
            read -p "Ingresa una cantidad en metros: " valor
            ;;
        4)
            read -p "Ingresa una cantidad en kilómetros: " valor
            ;;
        5)
            exit 0
            ;;
        *)
            echo "La opción no es valida"
            ;;
    esac

    # Convertir a milímetros, centímetros, metros y kilómetros
    milimetros=$valor
    centimetros=$(echo "scale=2; $valor * 10" | bc)
    metros=$(echo "scale=2; $valor / 1000" | bc)
    kilometros=$(echo "scale=2; $valor / 1000000" | bc)

    echo "Milímetros: $milimetros"
    echo "Centímetros: $centimetros"
    echo "Metros: $metros"
    echo "Kilómetros: $kilometros"
    echo ""
done
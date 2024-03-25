#!/bin/bash

# Función para convertir unidades de longitud
convertir_longitud() {
    local valor="$1"
    local unidad_origen="$2"
    local unidad_destino="$3"

    case "$unidad_origen" in
        "m") # Metros
            case "$unidad_destino" in
                "km") echo "scale=4; $valor / 1000" | bc ;;
                "cm") echo "scale=4; $valor * 100" | bc ;;
                *) echo "Unidad de destino no válida" ;;
            esac
            ;;
        "km") # Kilómetros
            case "$unidad_destino" in
                "m") echo "scale=4; $valor * 1000" | bc ;;
                "cm") echo "scale=4; $valor * 100000" | bc ;;
                *) echo "Unidad de destino no válida" ;;
            esac
            ;;
        "cm") # Centímetros
            case "$unidad_destino" in
                "m") echo "scale=4; $valor / 100" | bc ;;
                "km") echo "scale=4; $valor / 100000" | bc ;;
                *) echo "Unidad de destino no válida" ;;
            esac
            ;;
        *) echo "Unidad de origen no válida" ;;
    esac
}

# Función para convertir unidades de masa
convertir_masa() {
    local valor="$1"
    local unidad_origen="$2"
    local unidad_destino="$3"

    case "$unidad_origen" in
        "kg") # Kilogramos
            case "$unidad_destino" in
                "ton") echo "scale=4; $valor / 1000" | bc ;;
                "gr") echo "scale=4; $valor * 1000" | bc ;;
                *) echo "Unidad de destino no válida" ;;
            esac
            ;;
        "gr") # Gramo
            case "$unidad_destino" in
                "kg") echo "scale=4; $valor / 1000" | bc ;;
                "ton") echo "scale=4; $valor / 1000000" | bc ;;
                *) echo "Unidad de destino no válida" ;;
            esac
            ;;
        "ton") # Tonelada
            case "$unidad_destino" in
                "kg") echo "scale=4; $valor * 1000" | bc ;;
                "gr") echo "scale=4; $valor * 1000000" | bc ;;
                *) echo "Unidad de destino no válida" ;;
            esac
            ;;
        *) echo "Unidad de origen no válida" ;;
    esac
}

# Función para convertir unidades de tiempo
convertir_tiempo() {
    local valor="$1"
    local unidad_origen="$2"
    local unidad_destino="$3"

    case "$unidad_origen" in
        "seg") # Segundos
            case "$unidad_destino" in
                "hr") echo "scale=4; $valor / 3600" | bc ;;
                "min") echo "scale=4; $valor / 60" | bc ;;
                *) echo "Unidad de destino no válida" ;;
            esac
            ;;
        "hr") # Horas
            case "$unidad_destino" in
                "seg") echo "scale=4; $valor * 3600" | bc ;;
                "min") echo "scale=4; $valor * 60" | bc ;;
                *) echo "Unidad de destino no válida" ;;
            esac
            ;;
        "min") # Minutos
            case "$unidad_destino" in
                "seg") echo "scale=4; $valor * 60" | bc ;;
                "hr") echo "scale=4; $valor / 60" | bc ;;
                *) echo "Unidad de destino no válida" ;;
            esac
            ;;
        *) echo "Unidad de origen no válida" ;;
    esac
}

# Función para convertir unidades de almacenamiento
convertir_almacenamiento() {
    local valor="$1"
    local unidad_origen="$2"
    local unidad_destino="$3"

    case "$unidad_origen" in
        "kb") # Kilobyte
            case "$unidad_destino" in
                "mb") echo "scale=4; $valor / 1024" | bc ;;
                "gb") echo "scale=4; $valor / 1048576" | bc ;;
                *) echo "Unidad de destino no válida" ;;
            esac
            ;;
        "mb") # Megabyte
            case "$unidad_destino" in
                "kb") echo "scale=4; $valor * 1024" | bc ;;
                "gb") echo "scale=4; $valor / 1024" | bc ;;
                *) echo "Unidad de destino no válida" ;;
            esac
            ;;
        "gb") # Gigabyte
            case "$unidad_destino" in
                "kb") echo "scale=4; $valor * 1048576" | bc ;;
                "mb") echo "scale=4; $valor * 1024" | bc ;;
                *) echo "Unidad de destino no válida" ;;
            esac
            ;;
        *) echo "Unidad de origen no válida" ;;
    esac
}

# Ejemplo de uso para convertir longitud
echo "Por favor ingrese el valor a convertir para longitud"
read valor_longitud
# Validar si el valor ingresado es un número
if [[ "$valor_longitud" =~ ^[0-9]+$ ]]; then
    echo "Por favor ingrese la unidad de origen (m, km, cm):"
    read unidad_origen_longitud
    echo "Por favor ingrese la unidad de destino (m, km, cm):"
    read unidad_destino_longitud

    resultado_longitud=$(convertir_longitud "$valor_longitud" "$unidad_origen_longitud" "$unidad_destino_longitud")
    echo "$valor_longitud $unidad_origen_longitud equivale a $resultado_longitud $unidad_destino_longitud"
else 
    echo "Error: El valor ingresado no es válido."
fi

# Ejemplo de uso para convertir masa
echo "Por favor ingrese el valor a convertir para masa"
read valor_masa
 # Validar si el valor ingresado es un número
if [[ "$valor_masa" =~ ^[0-9]+$ ]]; then
    echo "Por favor ingrese la unidad de origen (kg, gr, ton):"
    read unidad_origen_masa
    echo "Por favor ingrese la unidad de destino (kg, gr, ton):"
    read unidad_destino_masa

    resultado_masa=$(convertir_masa "$valor_masa" "$unidad_origen_masa" "$unidad_destino_masa")
    echo "$valor_masa $unidad_origen_masa equivale a $resultado_masa $unidad_destino_masa"
else 
    echo "Error: El valor ingresado no es válido."
fi
# Ejemplo de uso para convertir tiempo
echo "Por favor ingrese el valor a convertir para tiempo"
read valor_tiempo
# Validar si el valor ingresado es un número
if [[ "$valor_tiempo" =~ ^[0-9]+$ ]]; then
    echo "Por favor ingrese la unidad de origen (seg, hr, min):"
    read unidad_origen_tiempo
    echo "Por favor ingrese la unidad de destino (seg, hr, min):"
    read unidad_destino_tiempo

    resultado_tiempo=$(convertir_tiempo "$valor_tiempo" "$unidad_origen_tiempo" "$unidad_destino_tiempo")
    echo "$valor_tiempo $unidad_origen_tiempo equivale a $resultado_tiempo $unidad_destino_tiempo"
 else 
    echo "Error: El valor ingresado no es válido."
fi
# Ejemplo de uso para convertir almacenamiento
echo "Por favor ingrese el valor a convertir para almacenamiento"
read valor_almacenamiento
# Validar si el valor ingresado es un número
if [[ "$valor_almacenamiento" =~ ^[0-9]+$ ]]; then
    echo "Por favor ingrese la unidad de origen (mb, kb, gb):"
    read unidad_origen_almacenamiento
    echo "Por favor ingrese la unidad de destino (mb, kb, gb):"
    read unidad_destino_almacenamiento

    resultado_almacenamiento=$(convertir_almacenamiento "$valor_almacenamiento" "$unidad_origen_almacenamiento" "$unidad_destino_almacenamiento")
    echo "$valor_almacenamiento $unidad_origen_almacenamiento equivale a $resultado_almacenamiento $unidad_destino_almacenamiento"
 else 
    echo "Error: El valor ingresado no es válido."
fi
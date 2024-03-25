#!/bin/bash
echo ""
echo -e "\e[1;33m-----------------------------------------------\e[0m"
echo -e "\e[1;33m:::::::::::: CONVERSOR DE UNIDADES ::::::::::::\e[0m"
echo -e "\e[1;33m-----------------------------------------------\e[0m"
echo ""
while [ "$opcion" != "5" ]; do
echo ""
echo ""
echo -e "\e[1;32m----------------------------------------------\e[0m"
echo -e "\e[1;32m:::::::::::::::::::: MENU ::::::::::::::::::::\e[0m"
echo -e "\e[1;32m----------------------------------------------\e[0m"
echo ""
echo -e "\e[1;34mSelecciona una opción:\e[0m"
echo ""
echo "1. Conversor de Longitud"
echo "2. Conversor de Masa"
echo "3. Conversor de Tiempo"
echo "4. Conversor de Almacenamiento"
echo "5. Salir"
echo ""
read -p "Opción: " opcion

    case $opcion in
            1)
            # Menú de selección de unidad de entrada
        echo ""
        echo -e "\e[1;32m---------------------------------------------------\e[0m"
        echo -e "\e[1;32m:::::::::::::: CONVERSOR DE LONGITUD ::::::::::::::\e[0m"
        echo -e "\e[1;32m---------------------------------------------------\e[0m"
        echo ""
        echo -e "\e[1;34mSelecciona la unidad de entrada a convertir:\e[0m"
        echo ""
        echo "1) Milímetros"
        echo "2) Centímetros"
        echo "3) Metros"
        echo "4) Kilómetros"
        echo "5) Pies"
        echo "6) Pulgadas"
        echo "7) Yardas"
        echo "8) Millas"
        echo ""
        read -p "Ingresa el número de tu elección: " seleccion_entrada 
        echo ""
        # Solicita al usuario la cantidad en la unidad elegida
        read -p "Ingresa la cantidad a covertir: " cantidad 
        echo ""
        if [[ "$cantidad" =~ ^[0-9]+$ ]]; then
        # Convierte la cantidad ingresada a milímetros
        case $seleccion_entrada in
            1)
                cantidad_mm=$cantidad
                unidad1="milímetros"
                ;;
            2)
                cantidad_mm=$(awk "BEGIN {print $cantidad * 10}")
                unidad1="centímetros"
                ;;
            3)
                cantidad_mm=$(awk "BEGIN {print $cantidad * 1000}")
                unidad1="metros"
                ;;
            4)
                cantidad_mm=$(awk "BEGIN {print $cantidad * 1000000}")
                unidad1="kilometros"
                ;;
            5)
                cantidad_mm=$(awk "BEGIN {print $cantidad / 0.00328084}")
                unidad1="pies"
                ;;
            6)
                cantidad_mm=$(awk "BEGIN {print $cantidad / 0.0393701}")
                unidad1="pulgadas"
                ;;
            7)
                cantidad_mm=$(awk "BEGIN {print $cantidad / 0.00109361}")
                unidad1="yardas"
                ;;
            8)
                cantidad_mm=$(awk "BEGIN {print $cantidad / 6.2137e-7}")
                unidad1="millas"
                ;;
            *)
                echo -e "\e[1;31mOpción no válida\e[0m"
                exit 1                
        esac

        # Menú de selección de unidad de salida
        echo "Selecciona la unidad a la que deseas convertir:"
        echo ""
        echo "1) Milimetros"
        echo "2) Centímetros"
        echo "3) Metros"
        echo "4) Kilómetros"
        echo "5) Pies"
        echo "6) Pulgadas"
        echo "7) Yardas"
        echo "8) Millas"
        echo ""
        read -p "Ingresa el número de tu elección: " seleccion_salida
        echo ""

        # Realiza la conversión basada en la unidad de salida elegida
        case $seleccion_salida in
            1)
                resultado=$cantidad_mm
                unidad2="milímetros"
                ;;
            2)
                resultado=$(awk "BEGIN {print $cantidad_mm / 10}")
                unidad2="centímetros"
                ;;
            3)
                resultado=$(awk "BEGIN {print $cantidad_mm / 1000}")
                unidad2="metros"
                ;;
            4)
                resultado=$(awk "BEGIN {print $cantidad_mm / 1000000}")
                unidad2="kilómetros"
                ;;
            5)
                resultado=$(awk "BEGIN {print $cantidad_mm * 0.00328084}")
                unidad2="pies"
                ;;
            6)
                resultado=$(awk "BEGIN {print $cantidad_mm * 0.0393701}")
                unidad2="pulgadas"
                ;;
            7)
                resultado=$(awk "BEGIN {print $cantidad_mm * 0.00109361}")
                unidad2="yardas"
                ;;
            8)
                resultado=$(awk "BEGIN {print $cantidad_mm * 6.2137e-7}")
                unidad2="millas"
                ;;
            *)
                echo -e "\e[1;31mOpción no válida\e[0m"
                exit 1
        esac

    echo -e "\e[1;32m--------------------------------------------------------------\e[0m"
    echo -e "Respuesta: \e[1;33m$cantidad\e[0m $unidad1 equivalen a \e[1;33m$resultado\e[0m $unidad2."
    echo -e "\e[1;32m--------------------------------------------------------------\e[0m"
    else 
        echo -e "\e[1;31mLa entrada no es un número.\e[0m"
    fi
        ;;
        2)
        # Menú de selección de unidad de entrada
    echo ""
    echo -e "\e[1;32m-------------------------------------------------\e[0m"
    echo -e "\e[1;32m::::::::::::::: CONVERSOR DE MASA :::::::::::::::\e[0m"
    echo -e "\e[1;32m-------------------------------------------------\e[0m"
    echo ""
    echo "Selecciona la unidad de entrada a convertir:"
    echo ""
    echo "1) Miligramos"
    echo "2) Gramos"
    echo "3) Kilogramos"
    echo "4) Onzas"
    echo "5) Libras"
    echo "6) Quintales"
    echo "7) Toneladas"
    echo ""
    read -p "Ingresa el número de tu elección: " seleccion_entrada 
    echo ""
    # Solicita al usuario la cantidad en la unidad elegida
    read -p "Ingresa la cantidad a convertir: " cantidad 
    echo ""
if [[ "$cantidad" =~ ^[0-9]+$ ]]; then
    # Convierte la cantidad ingresada a miligramos
    case $seleccion_entrada in
        1)
            cantidad_mg=$cantidad
            unidad1="miligramos"
            ;;
        2)
            cantidad_mg=$(awk "BEGIN {print $cantidad * 1000}")
            unidad1="gramos"
            ;;
        3)
            cantidad_mg=$(awk "BEGIN {print $cantidad * 1000000}")
            unidad1="kilogramos"
            ;;
        4)
            cantidad_mg=$(awk "BEGIN {print $cantidad * 28349.5}")
            unidad1="onzas"
            ;;
        5)
            cantidad_mg=$(awk "BEGIN {print $cantidad * 453592}")
            unidad1="libras"
            ;;
        6)
            cantidad_mg=$(awk "BEGIN {print $cantidad * 100000000}")
            unidad1="quintales"
            ;;
        7)
            cantidad_mg=$(awk "BEGIN {print $cantidad * 1000000000}")
            unidad1="toneladas"
            ;;
        *)
            echo -e "\e[1;31mOpción no válida\e[0m"
            exit 1          
    esac

    # Menú de selección de unidad de salida
    echo ""
    echo "Selecciona la unidad a la que deseas convertir:"
    echo ""
    echo "1) Miligramos" 
    echo "2) Gramos"
    echo "3) Kilogramos"
    echo "4) Onzas"
    echo "5) Libras"
    echo "6) Quintales"
    echo "7) Toneladas"
    echo ""
    read -p "Ingresa el número de tu elección: " seleccion_salida
    echo ""

    # Realiza la conversión basada en la unidad de salida elegida
    case $seleccion_salida in
        1)
            resultado=$cantidad_mg 
            unidad2="miligramos" 
            ;;
        2)
            resultado=$(awk "BEGIN {print $cantidad_mg / 1000}")
            unidad2="gramos"
            ;;
        3)
            resultado=$(awk "BEGIN {print $cantidad_mg / 1000000}")
            unidad2="kilogramos"
            ;;
        4)
            resultado=$(awk "BEGIN {print $cantidad_mg / 28349.5}")
            unidad2="onzas"
            ;;
        5)
            resultado=$(awk "BEGIN {print $cantidad_mg / 453592}")
            unidad2="libras"
            ;;
        6)
            resultado=$(awk "BEGIN {print $cantidad_mg / 100000000}")
            unidad2="quintales"
            ;;
        7)
            resultado=$(awk "BEGIN {print $cantidad_mg / 1000000000}")
            unidad2="toneladas"
            ;;
        *)
        echo -e "\e[1;31mOpción no válida\e[0m"
        exit 1     
    esac

    # Muestra el resultado de la conversión
    echo -e "\e[1;32m----------------------------------------------------\e[0m"
    echo -e "Respuesta: \e[1;33m$cantidad\e[0m $unidad1 equivalen a \e[1;33m$resultado\e[0m $unidad2."
    echo -e "\e[1;32m----------------------------------------------------\e[0m"
    else 
        echo -e "\e[1;31mLa entrada no es un número.\e[0m"
    fi
        ;;
        3)
        # Menú de selección de unidad de entrada
    echo ""
    echo -e "\e[1;32m-------------------------------------------------\e[0m"
    echo -e "\e[1;32m:::::::::::::: CONVERSOR DE TIEMPO ::::::::::::::\e[0m"
    echo -e "\e[1;32m-------------------------------------------------\e[0m"
    echo ""
    echo "Selecciona la unidad de entrada a convertir:"
    echo ""
    echo "1) Milisegundos"
    echo "2) Segundos"
    echo "3) Minutos"
    echo "4) Horas"
    echo "5) Días"
    echo "6) Semanas"
    echo "7) Meses"
    echo "8) Años"
    echo "9) Siglos"
    echo ""
    read -p "Ingresa el número de tu elección: " seleccion_entrada 
    echo ""
    # Solicita al usuario la cantidad en la unidad elegida
    read -p "Ingresa la cantidad a convertir: " cantidad 
    echo ""
    if [[ "$cantidad" =~ ^[0-9]+$ ]]; then
    # Convierte la cantidad ingresada a milisegundos
    case $seleccion_entrada in
        1)
            cantidad_ms=$cantidad
            unidad1="milisegundos"
            ;;
        2)
            cantidad_ms=$(awk "BEGIN {print $cantidad * 1000}")
            unidad1="segundos"
            ;;
        3)
            cantidad_ms=$(awk "BEGIN {print $cantidad * 60000}")
            unidad1="minutos"
            ;;
        4)
            cantidad_ms=$(awk "BEGIN {print $cantidad * 3600000}")
            unidad1="horas"
            ;;
        5)
            cantidad_ms=$(awk "BEGIN {print $cantidad * 86400000}")
            unidad1="días"
            ;;
        6)
            cantidad_ms=$(awk "BEGIN {print $cantidad * 604800000}")
            unidad1="semanas"
            ;;
        7)
            cantidad_ms=$(awk "BEGIN {print $cantidad * 2628000000}")
            unidad1="meses"
            ;;
        8)
            cantidad_ms=$(awk "BEGIN {print $cantidad * 31536000000}")
            unidad1="años"
            ;;
        9)
            cantidad_ms=$(awk "BEGIN {print $cantidad * 3153600000000}")
            unidad1="siglos"
            ;;
        *)
            echo -e "\e[1;31mOpción no válida\e[0m"
            exit 1           
    esac

    # Menú de selección de unidad de salida
    echo "Selecciona la unidad a la que deseas convertir:"
    echo ""
    echo "1) Milisegundos"
    echo "2) Segundos"
    echo "3) Minutos"
    echo "4) Horas"
    echo "5) Días"
    echo "6) Semanas"
    echo "7) Meses"
    echo "8) Años"
    echo "9) Siglos"
    echo ""
    read -p "Ingresa el número de tu elección: " seleccion_salida
    echo ""

    # Realiza la conversión basada en la unidad de salida seleccionada
    case $seleccion_salida in
        1)
            cantidad_convertida=$cantidad_ms
            unidad2="milisegundos"
            ;;
        2)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_ms / 1000}")
            unidad2="segundos"
            ;;
        3)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_ms / 60000}")
            unidad2="minutos"
            ;;
        4)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_ms / 3600000}")
            unidad2="horas"
            ;;
        5)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_ms / 86400000}")
            unidad2="días"
            ;;
        6)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_ms / 604800000}")
            unidad2="semanas"
            ;;
        7)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_ms / 2628000000}")
            unidad2="meses"
            ;;
        8)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_ms / 31536000000}")
            unidad2="años"
            ;;
        9)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_ms / 3153600000000}")
            unidad2="siglos"
            ;;
        *)
            echo -e "\e[1;31mOpción no válida\e[0m"
            exit 1         
    esac

    # Imprime el resultado
    echo -e "\e[1;32m--------------------------------------------------------\e[0m"
    echo -e "La cantidad de \e[1;33m$cantidad\e[0m $unidad1 es equivalente a \e[1;33m$cantidad_convertida\e[0m $unidad2."
    echo -e "\e[1;32m--------------------------------------------------------\e[0m"
    else 
        echo -e "\e[1;31mLa entrada no es un número.\e[0m"
    fi
        ;;
        4)
        # Menú de selección de unidad de entrada
    echo ""
    echo -e "\e[1;32m---------------------------------------------------------\e[0m"
    echo -e "\e[1;32m:::::::::::::: CONVERSOR DE ALMACENAMIENTO ::::::::::::::\e[0m"
    echo -e "\e[1;32m---------------------------------------------------------\e[0m"
    echo ""
    echo "Selecciona la unidad de entrada a convertir:"
    echo ""
    echo "1) Bytes"
    echo "2) Kilobytes"
    echo "3) Megabytes"
    echo "4) Gigabytes"
    echo "5) Terabytes"
    echo "6) Petabytes"
    echo "7) Exabytes"
    echo ""
    read -p "Ingresa el número de tu elección: " seleccion_entrada 
    echo ""
    # Solicita al usuario la cantidad en la unidad elegida
    read -p "Ingresa la cantidad a convertir: " cantidad 
    echo ""
    if [[ "$cantidad" =~ ^[0-9]+$ ]]; then
    # Convierte la cantidad ingresada a bytes
    case $seleccion_entrada in
        1)
            cantidad_bytes=$cantidad
            unidad1="bytes"
            ;;
        2)
            cantidad_bytes=$(awk "BEGIN {print $cantidad * 1024}")
            unidad1="kilobytes"
            ;;
        3)
            cantidad_bytes=$(awk "BEGIN {print $cantidad * 1024 * 1024}")
            unidad1="megabytes"
            ;;
        4)
            cantidad_bytes=$(awk "BEGIN {print $cantidad * 1024 * 1024 * 1024}")
            unidad1="gigabytes"
            ;;
        5)
            cantidad_bytes=$(awk "BEGIN {print $cantidad * 1024 * 1024 * 1024 * 1024}")
            unidad1="terabytes"
            ;;
        6)
            cantidad_bytes=$(awk "BEGIN {print $cantidad * 1024 * 1024 * 1024 * 1024 * 1024}")
            unidad1="petabytes"
            ;;
        7)
            cantidad_bytes=$(awk "BEGIN {print $cantidad * 1024 * 1024 * 1024 * 1024 * 1024 * 1024}")
            unidad1="exabytes"
            ;;
        *)
            echo -e "\e[1;31mOpción no válida\e[0m"
            exit 1
    esac

    # Menú de selección de unidad de salida
    echo "Selecciona la unidad a la que deseas convertir:"
    echo ""
    echo "1) Bytes"
    echo "2) Kilobytes"
    echo "3) Megabytes"
    echo "4) Gigabytes"
    echo "5) Terabytes"
    echo "6) Petabytes"
    echo "7) Exabytes"
    echo ""
    read -p "Ingresa el número de tu elección: " seleccion_salida
    echo ""

    # Realiza la conversión basada en la unidad de salida seleccionada
    case $seleccion_salida in
        1)
            cantidad_convertida=$cantidad_bytes
            unidad2="bytes"
            ;;
        2)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_bytes / 1024}")
            unidad2="kilobytes"
            ;;
        3)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_bytes / 1024 / 1024}")
            unidad2="megabytes"
            ;;
        4)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_bytes / 1024 / 1024 / 1024}")
            unidad2="gigabytes"
            ;;
        5)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_bytes / 1024 / 1024 / 1024 / 1024}")
            unidad2="terabytes"
            ;;
        6)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_bytes / 1024 / 1024 / 1024 / 1024 / 1024}")
            unidad2="petabytes"
            ;;
        7)
            cantidad_convertida=$(awk "BEGIN {print $cantidad_bytes / 1024 / 1024 / 1024 / 1024 / 1024 / 1024}")
            unidad2="exabytes"
            ;;
        *)
            echo -e "\e[1;31mOpción no válida\e[0m"
            exit 1
    esac

    # Imprime el resultado
    echo -e "\e[1;32m-------------------------------------------------------------\e[0m"
    echo -e "La cantidad de \e[1;33m$cantidad\e[0m $unidad1 es equivalente a \e[1;33m$cantidad_convertida\e[0m $unidad2."
    echo -e "\e[1;32m-------------------------------------------------------------\e[0m"
    else 
        echo -e "\e[1;31mLa entrada no es un número.\e[0m"
    fi
        ;;
        5) 
        exit 1
        ;;
        *)
        echo ""
        echo -e "\e[1;31mOpción no válida\e[0m"        
esac
done
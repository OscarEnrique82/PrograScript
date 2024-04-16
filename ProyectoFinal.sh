#!/bin/bash

# Función para ordenar la columna "Top 10" de mayor a menor basándonos en las ventas
ordenar_top10() {
    # Leer el archivo CSV y extraer las columnas "Top 10 de los prod mas vendidos" y "Ventas"
    awk -F';' 'NR>1 {print $7, "$" $6}' tabla.csv |
        # Ordenar numéricamente por la columna de ventas (segundo campo) en orden descendente
        sort -t' ' -k2,2nr |
        # Mostrar los primeros 10 valores
        head -n 10
}

# Llamar a la función
echo "" > top10.txt
echo "Top 10 de los productos mas vendidos:" >> top10.txt
echo "" >> top10.txt
ordenar_top10 >> top10.txt

# Función para imprimir las columnas "Depto" e "Ingresos por Depto" (solo filas con valores)
imprimir_deptos_ingresos() {
    # Leer el archivo CSV y extraer las columnas "Depto" e "Ingresos por Depto"
    awk -F';' 'NR>1 && $4!="" && $6!="" {print $4, "$" $6}' tabla.csv
}

# Llamar a la función
echo "" > deptos_ingresos.txt
echo "Ingreso por departamento:" >> deptos_ingresos.txt
echo "" >> deptos_ingresos.txt
imprimir_deptos_ingresos >> deptos_ingresos.txt

# Función para imprimir las columnas "Ingresos por mes" y "Clientes" (solo filas con valores)
imprimir_ingresos_mes_clientes() {
    # Leer el archivo CSV y extraer las columnas "Ingresos por mes" y "Clientes"
    awk -F';' 'NR>1 && $11!="" && $12!="" {print $12, "$" $11}' tabla.csv
}

# Llamar a la función
echo "" > ingresos_mes_clientes.txt
echo "Ingreso por mes por clientes:" >> ingresos_mes_clientes.txt
echo "" >> ingresos_mes_clientes.txt
imprimir_ingresos_mes_clientes >> ingresos_mes_clientes.txt

# Función para imprimir las columnas "Categorias" e "Ingresos por categorias" (solo filas con valores)
imprimir_categorias_ingresos() {
    # Leer el archivo CSV y extraer las columnas "Categorias" e "Ingresos por categorias"
    awk -F';' 'NR>1 && $8!="" && $9!="" {print $8, $9}' tabla.csv
}

# Llamar a la función
echo "" > categorias_ingresos.txt
echo "Ingreso por categorias:" >> categorias_ingresos.txt
echo "" >> categorias_ingresos.txt
imprimir_categorias_ingresos >> categorias_ingresos.txt

# Función para imprimir las columnas "Mes" y "Ventas" (solo filas con valores)
imprimir_mes_ventas() {
    # Leer el archivo CSV y extraer las columnas "Mes" y "Ventas"
    awk -F';' 'NR>1 && $3!="" && $6!="" {print $3, $6}' tabla.csv
}

# Llamar a la función
echo "" > mes_ventas.txt
echo "Ingreso por mes:" >> mes_ventas.txt
echo "" >> mes_ventas.txt
imprimir_mes_ventas >> mes_ventas.txt

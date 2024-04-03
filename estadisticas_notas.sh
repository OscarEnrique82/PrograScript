#!/bin/bash

# Leer el archivo CSV
while IFS=';' read -r nombre nota
do
# Convertir la nota a número
n=$(echo $nota | tr -d '\r')
# Como comprobar que la nota es un número
if [[ $n =~ ^[0-9]+$ ]]; then
    nombres+=("$nombre")
    notas+=("$n")
fi
done < notas.csv

# Calcular las estadísticas
aprobados=()
reprobados=()
excelencia=()
nota_maxima=0
for i in "${!notas[@]}"; 
do
    if [[ ${notas[$i]} -ge $nota_maxima ]]; then
        nota_maxima=${notas[$i]}
        estudiante_destacado=${nombres[$i]}
    fi
    if [[ ${notas[$i]} -ge 6 ]]; then
        aprobados+=(${nombres[$i]})
    fi

    if [[ ${notas[$i]} -lt 6 ]]; then
        reprobados+=(${nombres[$i]})
    fi
    
    if [[ ${notas[$i]} -gt 9 ]]; then
        excelencia+=(${nombres[$i]})
    fi
done

# Generar reporte
echo "Estudiante más sobresaliente" > reporte.txt
echo "-------------------------------------------------" >> reporte.txt
echo "$estudiante_destacado" >> reporte.txt
echo "" >> reporte.txt

echo "Estudiantes con excelencia académica (Nota > 9)" >> reporte.txt
echo "-------------------------------------------------" >> reporte.txt
for nombre in "${excelencia[@]}"; do
    echo "$nombre" >> reporte.txt
done
echo "" >> reporte.txt

echo "Estudiantes aprobados (Nota >= 6)" >> reporte.txt
echo "-------------------------------------------------" >> reporte.txt
for nombre in "${aprobados[@]}"; do
    echo "$nombre" >> reporte.txt
done
echo "" >> reporte.txt

echo "Estudiantes reprobados (Nota < 6)" >> reporte.txt
echo "-------------------------------------------------" >> reporte.txt
for nombre in "${reprobados[@]}"; do
    echo "$nombre" >> reporte.txt
done
#!/bin/bash
monto_anual=0
# Leer el archivo CSV
while IFS=';' read -r Marca Modelo Descripcion Year Mes Chasis Vin Transmision Cilindrada Traccion Combustion Departamento Municipio Precio Cliente Categoria
do
# Convertir la venta mensual a número
v=$(echo $venta_mensual | tr -d '\r')
# Como comprobar que la venta mensual es un número
if [[ $v =~ ^[0-9]+$ ]]; then
    mes+=("$mes")
    venta_mensual+=("$v")
fi
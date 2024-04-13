#!/bin/bash

#iniciallizar las variables globales
Enero=0
Febrero=0
Marzo=0
Abril=0
Mayo=0
Junio=0
Julio=0
Agosto=0
Septiembre=0
Octubre=0
Noviembre=0
Diciembre=0

# Definir función para imprimir las ventas por mes
imprimir_ventas_mes() 
{

echo -e "El total de ingresos para el mes de Enero son: $ $Enero"
echo -e "El total de ingresos para el mes de Febrero son: $ $Febrero"
echo -e "El total de ingresos para el mes de Marzo son: $ $Marzo"
echo -e "El total de ingresos para el mes de Abril son: $ $Abril"
echo -e "El total de ingresos para el mes de Mayo son: $ $Mayo"
echo -e "El total de ingresos para el mes de Junio son: $ $Junio"
echo -e "El total de ingresos para el mes de Julio son: $ $Julio"
echo -e "El total de ingresos para el mes de Agosto son: $ $Agosto"
echo -e "El total de ingresos para el mes de Septiembre son: $ $Septiembre"
echo -e "El total de ingresos para el mes de Octubre son: $ $Octubre"
echo -e "El total de ingresos para el mes de Noviembre son: $ $Noviembre"
echo -e "El total de ingresos para el mes de Diciembre son: $ $Diciembre"

}




# Leer el archivo CSV y procesar los datos
while IFS=";" read -r Brand Model Description year month chasis vin transmission cilindraje traccion combustion departamento municipio precio cliente categoria
do

        # Calcular el ingreso total por mes
        if [ "$month" = "Enero" ]; then
            Enero=$(awk "BEGIN { print $precio + $Enero }")
        fi

        if [ "$month" = "Febrero" ]; then
            Febrero=$(awk "BEGIN { print $precio + $Febrero }")
        fi

        if [ "$month" = "Marzo" ]; then
            Marzo=$(awk "BEGIN { print $precio + $Marzo }")
        fi

        if [ "$month" = "Abril" ]; then
            Abril=$(awk "BEGIN { print $precio + $Abril }")
        fi

        if [ "$month" = "Mayo" ]; then
            Mayo=$(awk "BEGIN { print $precio + $Mayo }")
        fi

        if [ "$month" = "Junio" ]; then
            Junio=$(awk "BEGIN { print $precio + $Junio }")
        fi

        if [ "$month" = "Julio" ]; then
            Julio=$(awk "BEGIN { print $precio + $Julio }")
        fi

        if [ "$month" = "Agosto" ]; then
            Agosto=$(awk "BEGIN { print $precio + $Agosto }")
        fi

        if [ "$month" = "Septiembre" ]; then
            Septiembre=$(awk "BEGIN { print $precio + $Septiembre }")
        fi

        if [ "$month" = "Octubre" ]; then
            Octubre=$(awk "BEGIN { print $precio + $Octubre }")
        fi

        if [ "$month" = "Noviembre" ]; then
            Noviembre=$(awk "BEGIN { print $precio + $Noviembre }")
        fi

        if [ "$month" = "Diciembre" ]; then
            Diciembre=$(awk "BEGIN { print $precio + $Diciembre }")
        fi
        # fin del calculo de ingreso por mes        



        # acumular las ventas por cliente
        if [ "$cliente" = "Continental Motors" ]; then
            clientecontinental=$(echo "$precio $clientecontinental" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi

        if [ "$cliente" = "Audi El Salvador" ]; then
            audisalvador=$(echo "$precio $audisalvador" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi

        if [ "$cliente" = "Importadora Salvadorena" ]; then
            imporsalvador=$(echo "$precio $imporsalvador" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi

        if [ "$cliente" = "Excel" ]; then
            excel=$(echo "$precio $excel" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi
        
        if [ "$cliente" = "Grupo Q" ]; then
            GrupoQ=$(echo "$precio $GrupoQ" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi

        if [ "$cliente" = "Grupo Geely" ]; then
            GrupoGeely=$(echo "$precio $GrupoGeely" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi
        if [ "$cliente" = "Didea" ]; then
            Didea=$(echo "$precio $Didea" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi
               #acumular las ventas por departamento
        if [ "$departamento" = "Ahuachapan" ]; then                
            Ahuachapan=$(echo "$precio $Ahuachapan" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi

        if [ "$departamento" = "La Libertad" ]; then
            LaLibertad=$(echo "$precio $LaLibertad" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi

        if [ "$departamento" = "San Salvador" ]; then    
            SanSalvador=$(echo "$precio $SanSalvador" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi
        
        if [ "$departamento" = "Santa Ana" ]; then
            SantaAna=$(echo "$precio $SantaAna" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi

        if [ "$departamento" = "Sonsonate" ]; then
            Sonsonate=$(echo "$precio $Sonsonate" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi
        # calcular ingreso por categoria 
        if [ "$categoria" = "Compacto" ]; then
            compacto=$(echo "$precio $compacto" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi
        if [ "$categoria" = "Deportivo" ]; then
            deportivo=$(echo "$precio $deportivo" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi
        if [ "$categoria" = "Sedan" ]; then
            sedan=$(echo "$precio $sedan" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi
        if [ "$categoria" = "SUV" ]; then
            suv=$(echo "$precio $suv" | awk '{result = $1 + $2; printf "%.2f\n", result}')
        fi
       
       done < /workspaces/PrograScript/ventas.csv

 ventas_por_departamento()
 {
    echo -e "El total de ventas en Ahuachapan es: $ $Ahuachapan"
    echo -e "El total de ventas en La Libertad es: $ $LaLibertad"
    echo -e "El total de ventas en San Salvador es: $ $SanSalvador"
    echo -e "El total de ventas en Santa Ana es: $ $SantaAna"
    echo -e "El total de ventas en Sonsonate es: $ $Sonsonate"
 }
ingreso_por_categoria()
{
    echo -e "El total de ventas en COMPACTO es: $ $compacto"
    echo -e "El total de ventas en DEPORTIVO es: $ $deportivo"
    echo -e "El total de ventas en SEDAN es: $ $sedan"
    echo -e "El total de ventas en SUV es: $ $suv"
}

#Funcion para imprimir las ventas por cliente

ventas_por_cliente()
{
echo -e "El ingreso total del cliente Continental Motors es de: $ $clientecontinental"
echo -e "El ingreso total del cliente Audi el salvador es de: $ $audisalvador"
echo -e "El ingreso total del cliente importadora Salvadoraña es: $ $imporsalvador"
echo -e "El ingreso total del cliente Grupo Q es : $ $GrupoQ"
echo -e "El ingreso total del cliente Grupo Geely es : $ $GrupoGeely"
echo -e "El total de ventas del cliente Excel es : $ $excel"
echo -e "El total de ventas del cliente Didea es : $ $Didea"
}

#Funcion para el top 10

top10autos()
{
auto1=$(grep -c "FIAT 500X SPORT CROSS 1.3 150CV DCT" /workspaces/PrograScript/ventas.csv)
auto2=$(grep -c "Alfa Romeo Giulietta 1.6 Multijet 120CV" /workspaces/PrograScript/ventas.csv)
auto3=$(grep -c "Audi A4 Allroad Quattro 40 TDI Quattro-Ultra S Tronic" /workspaces/PrograScript/ventas.csv)
auto4=$(grep -c "Audi Q5 Sportback 45 TFSI Quattro-Ultra" /workspaces/PrograScript/ventas.csv)
auto5=$(grep -c "Aston Martin DBX V8 550CV" /workspaces/PrograScript/ventas.csv)
auto6=$(grep -c "BMW IX3 Inspiring" /workspaces/PrograScript/ventas.csv)
auto7=$(grep -c "BMW I3 I3" /workspaces/PrograScript/ventas.csv)
auto8=$(grep -c "Chevrolet Corvette Stingray 2019 6.2L V8 VVT" /workspaces/PrograScript/ventas.csv)
auto9=$(grep -c "Chevrolet Aveo S 1.2L" /workspaces/PrograScript/ventas.csv)
auto10=$(grep -c "Ford EcoSport 1.0 EcoBoost 140CV" /workspaces/PrograScript/ventas.csv)
auto11=$(grep -c "Ford Fiesta 1.2 Eco 100CV" /workspaces/PrograScript/ventas.csv)
auto12=$(grep -c "Ford Focus 1.0T EcoBoost 125 CV Aut. 6" /workspaces/PrograScript/ventas.csv)
auto13=$(grep -c "Honda Civic Type R 329 CV" /workspaces/PrograScript/ventas.csv)
auto14=$(grep -c "Honda E:HEV 1.5 I-MMD" /workspaces/PrograScript/ventas.csv)
auto15=$(grep -c "Hyundai I20 2020 1.0 T-GDi 100 CV" /workspaces/PrograScript/ventas.csv)
auto16=$(grep -c "Hyundai Tucson 1.6 CRDi 48V 136 CV" /workspaces/PrograScript/ventas.csv)
auto17=$(grep -c "KIA Sportage 1.6 PHEV 265 CV 4X4 Auto." /workspaces/PrograScript/ventas.csv)
auto18=$(grep -c "KIA Rio 1.0 T-GDi MHEV 120 CV" /workspaces/PrograScript/ventas.csv)
auto19=$(grep -c "Toyota Sedan 140H" /workspaces/PrograScript/ventas.csv)
auto20=$(grep -c "Toyota RAV4 220h 4x4" /workspaces/PrograScript/ventas.csv)

# Crear un array con los nombres de los vehículos
nombres_autos=("FIAT 500X SPORT CROSS 1.3 150CV DCT" "Alfa Romeo Giulietta 1.6 Multijet 120CV" "Audi A4 Allroad Quattro 40 TDI Quattro-Ultra S Tronic" "Audi Q5 Sportback 45 TFSI Quattro-Ultra" "Aston Martin DBX V8 550CV" "BMW IX3 Inspiring" "BMW I3 I3" "Chevrolet Corvette Stingray 2019 6.2L V8 VVT" "Chevrolet Aveo S 1.2L" "Ford EcoSport 1.0 EcoBoost 140CV" "Ford Fiesta 1.2 Eco 100CV" "Ford Focus 1.0T EcoBoost 125 CV Aut. 6" "Honda Civic Type R 329 CV" "Honda E:HEV 1.5 I-MMD" "Hyundai I20 2020 1.0 T-GDi 100 CV" "Hyundai Tucson 1.6 CRDi 48V 136 CV" "KIA Sportage 1.6 PHEV 265 CV 4X4 Auto." "KIA Rio 1.0 T-GDi MHEV 120 CV" "Toyota Corolla " "Toyota RAV4 220h 4x4")

# Crear un array con los conteos de ventas de cada vehículo
ventas_autos=( $auto1 $auto2 $auto3 $auto4 $auto5 $auto6 $auto7 $auto8 $auto9 $auto10 $auto11 $auto12 $auto13 $auto14 $auto15 $auto16 $auto17 $auto18 $auto19 $auto20 )

# Combinar los nombres de los vehículos con sus respectivos conteos de ventas en un solo array
combined=()
for i in "${!nombres_autos[@]}"; do
    combined+=( "${nombres_autos[$i]}:${ventas_autos[$i]}" )
done

# Ordenar el array combinado por los conteos de ventas de mayor a menor
IFS=$'\n' sorted_combined=($(sort -t: -k2nr <<<"${combined[*]}"))

#crear el archivo top10.txt

for ((i=0; i<10; i++))
do
    echo -e "Auto #$((i+1)): $(echo ${sorted_combined[i]} | cut -d':' -f1) - Unidades vendidas: $(echo ${sorted_combined[i]} | cut -d':' -f2)" >> /workspaces/PrograScript/Reporte_top10.txt
done

}

#llamamos a las funciones y generación de reportes
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::" > /workspaces/PrograScript/Reporte_ventas_por_cliente.txt
echo "::::::::::::::::::: Reporte de ventas por cliente ::::::::::::::::::::" >> /workspaces/PrograScript/Reporte_ventas_por_cliente.txt
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::" >> /workspaces/PrograScript/Reporte_ventas_por_cliente.txt
echo "" >> /workspaces/PrograScript/Reporte_ventas_por_cliente.txt
ventas_por_cliente >> /workspaces/PrograScript/Reporte_ventas_por_cliente.txt

echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::" > /workspaces/PrograScript/Reporte_ventas_mensual.txt
echo "::::::::::::::::: Reporte de ventas mensual ::::::::::::::::::" >> /workspaces/PrograScript/Reporte_ventas_mensual.txt
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::" >> /workspaces/PrograScript/Reporte_ventas_mensual.txt
echo "" >> /workspaces/PrograScript/Reporte_ventas_mensual.txt
imprimir_ventas_mes >> /workspaces/PrograScript/Reporte_ventas_mensual.txt

echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::" > /workspaces/PrograScript/Reporte_top10.txt
echo ":::::::::::::::::::::: Top 10 de autos mas vendidos ::::::::::::::::::::::" >> /workspaces/PrograScript/Reporte_top10.txt
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::" >> /workspaces/PrograScript/Reporte_top10.txt
echo "" >> /workspaces/PrograScript/Reporte_top10.txt
top10autos >> /workspaces/PrograScript/Reporte_top10.txt

echo "::::::::::::::::::::::::::::::::::::::::::::::::::::" > /workspaces/PrograScript/Reporte_ventas_por_departamento.txt
echo "::::::::: Reporte ventas por departamento ::::::::::" >> /workspaces/PrograScript/Reporte_ventas_por_departamento.txt
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::" >> /workspaces/PrograScript/Reporte_ventas_por_departamento.txt
echo "" >> /workspaces/PrograScript/Reporte_ventas_por_departamento.txt
ventas_por_departamento >> /workspaces/PrograScript/Reporte_ventas_por_departamento.txt

echo ":::::::::::::::::::::::::::::::::::::::::::::::::" > /workspaces/PrograScript/Reporte_ingreso_por_categoria.txt
echo "::::::::: Reporte ventas por categoria ::::::::::" >> /workspaces/PrograScript/Reporte_ingreso_por_categoria.txt
echo ":::::::::::::::::::::::::::::::::::::::::::::::::" >> /workspaces/PrograScript/Reporte_ingreso_por_categoria.txt
echo "" >> /workspaces/PrograScript/Reporte_ingreso_por_categoria.txt
ingreso_por_categoria >> /workspaces/PrograScript/Reporte_ingreso_por_categoria.txt

#Reporte completo
echo "" > /workspaces/PrograScript/reporte_completo.txt
cat /workspaces/PrograScript/Reporte_ventas_por_cliente.txt >> /workspaces/PrograScript/reporte_completo.txt
echo "" >> /workspaces/PrograScript/reporte_completo.txt
cat /workspaces/PrograScript/Reporte_ventas_mensual.txt >> /workspaces/PrograScript/reporte_completo.txt
echo "" >> /workspaces/PrograScript/reporte_completo.txt
cat /workspaces/PrograScript/Reporte_top10.txt >> /workspaces/PrograScript/reporte_completo.txt
echo "" >> /workspaces/PrograScript/reporte_completo.txt
cat /workspaces/PrograScript/Reporte_ventas_por_departamento.txt >> /workspaces/PrograScript/reporte_completo.txt
echo "" >> /workspaces/PrograScript/reporte_completo.txt
cat /workspaces/PrograScript/Reporte_ingreso_por_categoria.txt >> /workspaces/PrograScript/reporte_completo.txt

mail -s "Proyecto final DSNP011423 DSNP010923" DSNP010923@ugb.edu.sv < /workspaces/PrograScript/reporte_completo.txt